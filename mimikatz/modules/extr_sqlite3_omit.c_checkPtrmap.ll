; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_checkPtrmap.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_checkPtrmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_IOERR_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to read ptrmap key=%d\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Bad ptr map entry key=%d expected=(%d,%d) got=(%d,%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, i64, i64)* @checkPtrmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkPtrmap(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @ptrmapGet(i32 %14, i64 %15, i64* %10, i64* %11)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @SQLITE_NOMEM, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SQLITE_IOERR_NOMEM, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 (%struct.TYPE_4__*, i8*, i64, ...) @checkAppendMsg(%struct.TYPE_4__* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %33)
  br label %51

35:                                               ; preds = %4
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39, %35
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 (%struct.TYPE_4__*, i8*, i64, ...) @checkAppendMsg(%struct.TYPE_4__* %44, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %45, i64 %46, i64 %47, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %31, %43, %39
  ret void
}

declare dso_local i32 @ptrmapGet(i32, i64, i64*, i64*) #1

declare dso_local i32 @checkAppendMsg(%struct.TYPE_4__*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
