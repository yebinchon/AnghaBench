; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_appendinfo.c_make_inh_translation_list.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_appendinfo.c_make_inh_translation_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i32, i64 }

@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"could not find inherited attribute \22%s\22 of relation \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"attribute \22%s\22 of relation \22%s\22 does not match parent's type\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"attribute \22%s\22 of relation \22%s\22 does not match parent's collation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32**)* @make_inh_translation_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_inh_translation_list(i64 %0, i64 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %23 = load i32*, i32** @NIL, align 8
  store i32* %23, i32** %9, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.TYPE_6__* @RelationGetDescr(i64 %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %10, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.TYPE_6__* @RelationGetDescr(i64 %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %11, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @RelationGetRelid(i64 %28)
  store i64 %29, i64* %12, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %164, %4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %167

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %41, i32 %42)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %17, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32*, i32** %9, align 8
  %50 = call i32* @lappend(i32* %49, i32* null)
  store i32* %50, i32** %9, align 8
  br label %164

51:                                               ; preds = %40
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @NameStr(i32 %54)
  store i8* %55, i8** %18, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %19, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %20, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %21, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %51
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i64, i64* %19, align 8
  %74 = load i64, i64* %20, align 8
  %75 = load i64, i64* %21, align 8
  %76 = call i32* @makeVar(i32 %70, i32 %72, i64 %73, i64 %74, i64 %75, i32 0)
  %77 = call i32* @lappend(i32* %69, i32* %76)
  store i32* %77, i32** %9, align 8
  br label %164

78:                                               ; preds = %51
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %97, label %82

82:                                               ; preds = %78
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %83, i32 %84)
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %82
  %90 = load i8*, i8** %18, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @NameStr(i32 %93)
  %95 = call i64 @strcmp(i8* %90, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %89, %82, %78
  %98 = load i64, i64* %12, align 8
  %99 = load i8*, i8** %18, align 8
  %100 = call i32 @SearchSysCacheAttName(i64 %98, i8* %99)
  store i32 %100, i32* %22, align 4
  %101 = load i32, i32* %22, align 4
  %102 = call i32 @HeapTupleIsValid(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* @ERROR, align 4
  %106 = load i8*, i8** %18, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @RelationGetRelationName(i64 %107)
  %109 = call i32 @elog(i32 %105, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %106, i32 %108)
  br label %110

110:                                              ; preds = %104, %97
  %111 = load i32, i32* %22, align 4
  %112 = call i64 @GETSTRUCT(i32 %111)
  %113 = inttoptr i64 %112 to %struct.TYPE_7__*
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %22, align 4
  %118 = call i32 @ReleaseSysCache(i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %120 = load i32, i32* %16, align 4
  %121 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %119, i32 %120)
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %17, align 8
  br label %122

122:                                              ; preds = %110, %89
  %123 = load i64, i64* %19, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load i64, i64* %20, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128, %122
  %135 = load i32, i32* @ERROR, align 4
  %136 = load i8*, i8** %18, align 8
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @RelationGetRelationName(i64 %137)
  %139 = call i32 @elog(i32 %135, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %136, i32 %138)
  br label %140

140:                                              ; preds = %134, %128
  %141 = load i64, i64* %21, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load i32, i32* @ERROR, align 4
  %148 = load i8*, i8** %18, align 8
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @RelationGetRelationName(i64 %149)
  %151 = call i32 @elog(i32 %147, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %148, i32 %150)
  br label %152

152:                                              ; preds = %146, %140
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %16, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i64, i64* %19, align 8
  %158 = load i64, i64* %20, align 8
  %159 = load i64, i64* %21, align 8
  %160 = call i32* @makeVar(i32 %154, i32 %156, i64 %157, i64 %158, i64 %159, i32 0)
  %161 = call i32* @lappend(i32* %153, i32* %160)
  store i32* %161, i32** %9, align 8
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  br label %164

164:                                              ; preds = %152, %68, %48
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %36

167:                                              ; preds = %36
  %168 = load i32*, i32** %9, align 8
  %169 = load i32**, i32*** %8, align 8
  store i32* %168, i32** %169, align 8
  ret void
}

declare dso_local %struct.TYPE_6__* @RelationGetDescr(i64) #1

declare dso_local i64 @RelationGetRelid(i64) #1

declare dso_local %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @lappend(i32*, i32*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32* @makeVar(i32, i32, i64, i64, i64, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SearchSysCacheAttName(i64, i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
