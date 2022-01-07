; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_copy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dstr_copy(%struct.dstr* %0, i8* %1) #0 {
  %3 = alloca %struct.dstr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8, %2
  %13 = load %struct.dstr*, %struct.dstr** %3, align 8
  %14 = call i32 @dstr_free(%struct.dstr* %13)
  br label %32

15:                                               ; preds = %8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %5, align 8
  %18 = load %struct.dstr*, %struct.dstr** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 1
  %21 = call i32 @dstr_ensure_capacity(%struct.dstr* %18, i64 %20)
  %22 = load %struct.dstr*, %struct.dstr** %3, align 8
  %23 = getelementptr inbounds %struct.dstr, %struct.dstr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  %28 = call i32 @memcpy(i32 %24, i8* %25, i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.dstr*, %struct.dstr** %3, align 8
  %31 = getelementptr inbounds %struct.dstr, %struct.dstr* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dstr_ensure_capacity(%struct.dstr*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
