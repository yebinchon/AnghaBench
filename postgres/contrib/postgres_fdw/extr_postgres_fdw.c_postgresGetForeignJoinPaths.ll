; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresGetForeignJoinPaths.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresGetForeignJoinPaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_29__ = type { double, i32, %struct.TYPE_28__*, %struct.TYPE_31__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_31__ = type { i32, double, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32, i8*, i32* }
%struct.TYPE_32__ = type { i32* }

@CMD_DELETE = common dso_local global i64 0, align 8
@CMD_UPDATE = common dso_local global i64 0, align 8
@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"could not push down foreign join because a local path suitable for EPQ checks was not found\00", align 1
@JOIN_INNER = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32, %struct.TYPE_32__*)* @postgresGetForeignJoinPaths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postgresGetForeignJoinPaths(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1, %struct.TYPE_29__* %2, %struct.TYPE_29__* %3, i32 %4, %struct.TYPE_32__* %5) #0 {
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %8, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %9, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_32__* %5, %struct.TYPE_32__** %12, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %23 = icmp ne %struct.TYPE_31__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %167

25:                                               ; preds = %6
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bms_is_empty(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %167

32:                                               ; preds = %25
  %33 = call i64 @palloc0(i32 88)
  %34 = inttoptr i64 %33 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %34, %struct.TYPE_31__** %13, align 8
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 3
  store %struct.TYPE_31__* %37, %struct.TYPE_31__** %39, align 8
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 12
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CMD_DELETE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %62, label %49

49:                                               ; preds = %32
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CMD_UPDATE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57, %49, %32
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %64 = call i32* @GetExistingLocalJoinPath(%struct.TYPE_29__* %63)
  store i32* %64, i32** %19, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @DEBUG3, align 4
  %69 = call i32 @elog(i32 %68, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0))
  br label %167

70:                                               ; preds = %62
  br label %72

71:                                               ; preds = %57
  store i32* null, i32** %19, align 8
  br label %72

72:                                               ; preds = %71, %70
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %79 = call i32 @foreign_join_ok(%struct.TYPE_30__* %73, %struct.TYPE_29__* %74, i32 %75, %struct.TYPE_29__* %76, %struct.TYPE_29__* %77, %struct.TYPE_32__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %72
  %82 = load i32*, i32** %19, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32*, i32** %19, align 8
  %86 = call i32 @pfree(i32* %85)
  br label %87

87:                                               ; preds = %84, %81
  br label %167

88:                                               ; preds = %72
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @JOIN_INNER, align 4
  %94 = call i8* @clauselist_selectivity(%struct.TYPE_30__* %89, i32 %92, i32 0, i32 %93, i32* null)
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 11
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i32 0, i32 10
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %103 = call i32 @cost_qual_eval(i32* %98, i32 %101, %struct.TYPE_30__* %102)
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %88
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i8* @clauselist_selectivity(%struct.TYPE_30__* %109, i32 %112, i32 0, i32 %115, i32* %118)
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 7
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %108, %88
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %125 = load i32, i32* @NIL, align 4
  %126 = load i32, i32* @NIL, align 4
  %127 = call i32 @estimate_path_cost_size(%struct.TYPE_30__* %123, %struct.TYPE_29__* %124, i32 %125, i32 %126, i32* null, double* %15, i32* %16, i8** %17, i8** %18)
  %128 = load double, double* %15, align 8
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  store double %128, double* %130, align 8
  %131 = load i32, i32* %16, align 4
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 4
  %136 = load double, double* %15, align 8
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 1
  store double %136, double* %138, align 8
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load i8*, i8** %17, align 8
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** %18, align 8
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %150 = load double, double* %15, align 8
  %151 = load i8*, i8** %17, align 8
  %152 = load i8*, i8** %18, align 8
  %153 = load i32, i32* @NIL, align 4
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %19, align 8
  %158 = load i32, i32* @NIL, align 4
  %159 = call i32* @create_foreign_join_path(%struct.TYPE_30__* %148, %struct.TYPE_29__* %149, i32* null, double %150, i8* %151, i8* %152, i32 %153, i32 %156, i32* %157, i32 %158)
  store i32* %159, i32** %14, align 8
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %161 = load i32*, i32** %14, align 8
  %162 = call i32 @add_path(%struct.TYPE_29__* %160, i32* %161)
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %165 = load i32*, i32** %19, align 8
  %166 = call i32 @add_paths_with_pathkeys_for_rel(%struct.TYPE_30__* %163, %struct.TYPE_29__* %164, i32* %165)
  br label %167

167:                                              ; preds = %122, %87, %67, %31, %24
  ret void
}

declare dso_local i32 @bms_is_empty(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32* @GetExistingLocalJoinPath(%struct.TYPE_29__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @foreign_join_ok(%struct.TYPE_30__*, %struct.TYPE_29__*, i32, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_32__*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i8* @clauselist_selectivity(%struct.TYPE_30__*, i32, i32, i32, i32*) #1

declare dso_local i32 @cost_qual_eval(i32*, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @estimate_path_cost_size(%struct.TYPE_30__*, %struct.TYPE_29__*, i32, i32, i32*, double*, i32*, i8**, i8**) #1

declare dso_local i32* @create_foreign_join_path(%struct.TYPE_30__*, %struct.TYPE_29__*, i32*, double, i8*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @add_path(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @add_paths_with_pathkeys_for_rel(%struct.TYPE_30__*, %struct.TYPE_29__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
