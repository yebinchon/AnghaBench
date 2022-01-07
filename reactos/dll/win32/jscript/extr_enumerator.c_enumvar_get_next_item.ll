; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_enumerator.c_enumvar_get_next_item.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_enumerator.c_enumvar_get_next_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32 }

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"failed to convert jsval to variant!\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @enumvar_get_next_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @enumvar_get_next_item(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @S_OK, align 8
  store i64 %11, i64* %2, align 8
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @jsval_release(i8* %15)
  %17 = call i32 @VariantInit(i32* %5)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @IEnumVARIANT_Next(i32 %20, i32 1, i32* %5, i32* null)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %12
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = call i64 @variant_to_jsval(i32* %5, i8** %27)
  store i64 %28, i64* %4, align 8
  %29 = call i32 @VariantClear(i32* %5)
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @FAILED(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %35 = call i8* (...) @jsval_undefined()
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %4, align 8
  store i64 %38, i64* %2, align 8
  br label %49

39:                                               ; preds = %25
  br label %47

40:                                               ; preds = %12
  %41 = call i8* (...) @jsval_undefined()
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* @TRUE, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %39
  %48 = load i64, i64* @S_OK, align 8
  store i64 %48, i64* %2, align 8
  br label %49

49:                                               ; preds = %47, %33, %10
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

declare dso_local i32 @jsval_release(i8*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @IEnumVARIANT_Next(i32, i32, i32*, i32*) #1

declare dso_local i64 @variant_to_jsval(i32*, i8**) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i8* @jsval_undefined(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
