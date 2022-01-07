; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_config.c_ScmMarkServiceForDelete.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_config.c_ScmMarkServiceForDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"ScmMarkServiceForDelete() called\0A\00", align 1
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i32] [i32 68, i32 101, i32 108, i32 101, i32 116, i32 101, i32 70, i32 108, i32 97, i32 103, i32 0], align 4
@REG_DWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ScmMarkServiceForDelete(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* null, i32** %4, align 8
  store i64 1, i64* %5, align 8
  %7 = call i32 @DPRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KEY_WRITE, align 4
  %12 = call i64 @ScmOpenServiceKey(i32 %10, i32 %11, i32** %4)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %2, align 8
  br label %26

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @REG_DWORD, align 4
  %21 = ptrtoint i64* %5 to i32
  %22 = call i64 @RegSetValueExW(i32* %19, i8* bitcast ([11 x i32]* @.str.1 to i8*), i32 0, i32 %20, i32 %21, i32 8)
  store i64 %22, i64* %6, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @RegCloseKey(i32* %23)
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %18, %16
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i64 @ScmOpenServiceKey(i32, i32, i32**) #1

declare dso_local i64 @RegSetValueExW(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
