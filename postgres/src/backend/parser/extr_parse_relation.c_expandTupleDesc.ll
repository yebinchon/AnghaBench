; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_relation.c_expandTupleDesc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_relation.c_expandTupleDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@INT4OID = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32, i32**, i32**)* @expandTupleDesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expandTupleDesc(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32** %8, i32** %9) #0 {
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32** %8, i32*** %19, align 8
  store i32** %9, i32*** %20, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @list_length(i32 %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %10
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32* @list_nth_cell(i32 %35, i32 %36)
  br label %39

38:                                               ; preds = %10
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32* [ %37, %32 ], [ null, %38 ]
  store i32* %40, i32** %21, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  store i32 0, i32* %22, align 4
  br label %48

48:                                               ; preds = %152, %39
  %49 = load i32, i32* %22, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %155

52:                                               ; preds = %48
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = load i32, i32* %22, align 4
  %55 = call %struct.TYPE_15__* @TupleDescAttr(%struct.TYPE_14__* %53, i32 %54)
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %23, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %52
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %60
  %64 = load i32**, i32*** %19, align 8
  %65 = icmp ne i32** %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32**, i32*** %19, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @pstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %70 = call %struct.TYPE_13__* @makeString(i32 %69)
  %71 = call i32* @lappend(i32* %68, %struct.TYPE_13__* %70)
  %72 = load i32**, i32*** %19, align 8
  store i32* %71, i32** %72, align 8
  br label %73

73:                                               ; preds = %66, %63
  %74 = load i32**, i32*** %20, align 8
  %75 = icmp ne i32** %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32**, i32*** %20, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @INT4OID, align 4
  %80 = load i32, i32* @InvalidOid, align 4
  %81 = call %struct.TYPE_13__* @makeNullConst(i32 %79, i32 -1, i32 %80)
  %82 = call i32* @lappend(i32* %78, %struct.TYPE_13__* %81)
  %83 = load i32**, i32*** %20, align 8
  store i32* %82, i32** %83, align 8
  br label %84

84:                                               ; preds = %76, %73
  br label %85

85:                                               ; preds = %84, %60
  %86 = load i32*, i32** %21, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %21, align 8
  %93 = call i32* @lnext(i32 %91, i32* %92)
  store i32* %93, i32** %21, align 8
  br label %94

94:                                               ; preds = %88, %85
  br label %152

95:                                               ; preds = %52
  %96 = load i32**, i32*** %19, align 8
  %97 = icmp ne i32** %96, null
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = load i32*, i32** %21, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32*, i32** %21, align 8
  %103 = call i32 @lfirst(i32* %102)
  %104 = call i8* @strVal(i32 %103)
  store i8* %104, i8** %24, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %21, align 8
  %109 = call i32* @lnext(i32 %107, i32* %108)
  store i32* %109, i32** %21, align 8
  br label %115

110:                                              ; preds = %98
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @NameStr(i32 %113)
  store i8* %114, i8** %24, align 8
  br label %115

115:                                              ; preds = %110, %101
  %116 = load i32**, i32*** %19, align 8
  %117 = load i32*, i32** %116, align 8
  %118 = load i8*, i8** %24, align 8
  %119 = call i32 @pstrdup(i8* %118)
  %120 = call %struct.TYPE_13__* @makeString(i32 %119)
  %121 = call i32* @lappend(i32* %117, %struct.TYPE_13__* %120)
  %122 = load i32**, i32*** %19, align 8
  store i32* %121, i32** %122, align 8
  br label %123

123:                                              ; preds = %115, %95
  %124 = load i32**, i32*** %20, align 8
  %125 = icmp ne i32** %124, null
  br i1 %125, label %126, label %151

126:                                              ; preds = %123
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %128, %129
  %131 = add nsw i32 %130, 1
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %16, align 4
  %142 = call %struct.TYPE_13__* @makeVar(i32 %127, i32 %131, i32 %134, i32 %137, i32 %140, i32 %141)
  store %struct.TYPE_13__* %142, %struct.TYPE_13__** %25, align 8
  %143 = load i32, i32* %17, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  %146 = load i32**, i32*** %20, align 8
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %149 = call i32* @lappend(i32* %147, %struct.TYPE_13__* %148)
  %150 = load i32**, i32*** %20, align 8
  store i32* %149, i32** %150, align 8
  br label %151

151:                                              ; preds = %126, %123
  br label %152

152:                                              ; preds = %151, %94
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %22, align 4
  br label %48

155:                                              ; preds = %48
  ret void
}

declare dso_local i32 @list_length(i32) #1

declare dso_local i32* @list_nth_cell(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_15__* @TupleDescAttr(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @makeString(i32) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local %struct.TYPE_13__* @makeNullConst(i32, i32, i32) #1

declare dso_local i32* @lnext(i32, i32*) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @lfirst(i32*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local %struct.TYPE_13__* @makeVar(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
