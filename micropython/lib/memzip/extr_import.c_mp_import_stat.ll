; ModuleID = '/home/carl/AnghaBench/micropython/lib/memzip/extr_import.c_mp_import_stat.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/memzip/extr_import.c_mp_import_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@MZ_OK = common dso_local global i64 0, align 8
@MP_IMPORT_STAT_NO_EXIST = common dso_local global i32 0, align 4
@MP_IMPORT_STAT_DIR = common dso_local global i32 0, align 4
@MP_IMPORT_STAT_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_import_stat(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @memzip_stat(i8* %5, %struct.TYPE_3__* %4)
  %7 = load i64, i64* @MZ_OK, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @MP_IMPORT_STAT_NO_EXIST, align 4
  store i32 %10, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @MP_IMPORT_STAT_DIR, align 4
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @MP_IMPORT_STAT_FILE, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %15, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @memzip_stat(i8*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
