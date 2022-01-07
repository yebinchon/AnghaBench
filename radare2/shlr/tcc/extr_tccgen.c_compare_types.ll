; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_compare_types.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_compare_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }

@VT_TYPE = common dso_local global i32 0, align 4
@VT_CONSTANT = common dso_local global i32 0, align 4
@VT_VOLATILE = common dso_local global i32 0, align 4
@VT_BTYPE = common dso_local global i32 0, align 4
@VT_PTR = common dso_local global i32 0, align 4
@VT_STRUCT = common dso_local global i32 0, align 4
@VT_UNION = common dso_local global i32 0, align 4
@VT_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, i32)* @compare_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_types(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VT_TYPE, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VT_TYPE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = load i32, i32* @VT_CONSTANT, align 4
  %25 = load i32, i32* @VT_VOLATILE, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @VT_CONSTANT, align 4
  %31 = load i32, i32* @VT_VOLATILE, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %23, %3
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %82

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @VT_BTYPE, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @VT_PTR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = call %struct.TYPE_10__* @pointed_type(%struct.TYPE_10__* %49)
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %5, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = call %struct.TYPE_10__* @pointed_type(%struct.TYPE_10__* %51)
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %6, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = call i32 @is_compatible_types(%struct.TYPE_10__* %53, %struct.TYPE_10__* %54)
  store i32 %55, i32* %4, align 4
  br label %82

56:                                               ; preds = %41
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @VT_STRUCT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @VT_UNION, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60, %56
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %4, align 4
  br label %82

73:                                               ; preds = %60
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @VT_FUNC, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = call i32 @is_compatible_func(%struct.TYPE_10__* %78, %struct.TYPE_10__* %79)
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %73
  store i32 1, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %77, %64, %48, %40
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_10__* @pointed_type(%struct.TYPE_10__*) #1

declare dso_local i32 @is_compatible_types(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @is_compatible_func(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
