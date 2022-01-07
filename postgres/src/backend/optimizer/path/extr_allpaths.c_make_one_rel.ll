; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_make_one_rel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_allpaths.c_make_one_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, i64 }
%struct.TYPE_13__ = type { i64, double, i32*, %struct.TYPE_12__** }

@RELOPT_BASEREL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @make_one_rel(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  store i32* null, i32** %11, align 8
  store i64 1, i64* %6, align 8
  br label %12

12:                                               ; preds = %52, %2
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %21, i64 %22
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = icmp eq %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %52

28:                                               ; preds = %18
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RELOPT_BASEREL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %52

42:                                               ; preds = %28
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32* @bms_add_member(i32* %45, i64 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  br label %52

52:                                               ; preds = %42, %41, %27
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %12

55:                                               ; preds = %12
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = call i32 @set_base_rel_consider_startup(%struct.TYPE_13__* %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = call i32 @set_base_rel_sizes(%struct.TYPE_13__* %58)
  store double 0.000000e+00, double* %7, align 8
  store i64 1, i64* %6, align 8
  br label %60

60:                                               ; preds = %100, %55
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %60
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %69, i64 %70
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %9, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = icmp eq %struct.TYPE_12__* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %100

76:                                               ; preds = %66
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @Assert(i32 %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = call i64 @IS_DUMMY_REL(%struct.TYPE_12__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %100

88:                                               ; preds = %76
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = call i64 @IS_SIMPLE_REL(%struct.TYPE_12__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = sitofp i64 %95 to double
  %97 = load double, double* %7, align 8
  %98 = fadd double %97, %96
  store double %98, double* %7, align 8
  br label %99

99:                                               ; preds = %92, %88
  br label %100

100:                                              ; preds = %99, %87, %75
  %101 = load i64, i64* %6, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %6, align 8
  br label %60

103:                                              ; preds = %60
  %104 = load double, double* %7, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  store double %104, double* %106, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = call i32 @set_base_rel_pathlists(%struct.TYPE_13__* %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = call %struct.TYPE_12__* @make_rel_from_joinlist(%struct.TYPE_13__* %109, i32* %110)
  store %struct.TYPE_12__* %111, %struct.TYPE_12__** %5, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @bms_equal(i32 %114, i32* %117)
  %119 = call i32 @Assert(i32 %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %120
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @bms_add_member(i32*, i64) #1

declare dso_local i32 @set_base_rel_consider_startup(%struct.TYPE_13__*) #1

declare dso_local i32 @set_base_rel_sizes(%struct.TYPE_13__*) #1

declare dso_local i64 @IS_DUMMY_REL(%struct.TYPE_12__*) #1

declare dso_local i64 @IS_SIMPLE_REL(%struct.TYPE_12__*) #1

declare dso_local i32 @set_base_rel_pathlists(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @make_rel_from_joinlist(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @bms_equal(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
