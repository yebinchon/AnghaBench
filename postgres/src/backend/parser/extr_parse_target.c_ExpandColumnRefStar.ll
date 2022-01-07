; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_target.c_ExpandColumnRefStar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_target.c_ExpandColumnRefStar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)*, i32* (%struct.TYPE_15__*, %struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { i32, i32* }

@MyDatabaseId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_AMBIGUOUS_COLUMN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"column reference \22%s\22 is ambiguous\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"cross-database references are not implemented: %s\00", align 1
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"improper qualified name (too many dotted names): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, %struct.TYPE_16__*, i32)* @ExpandColumnRefStar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ExpandColumnRefStar(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @list_length(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32* @ExpandAllTables(%struct.TYPE_15__* %28, i32 %31)
  store i32* %32, i32** %4, align 8
  br label %197

33:                                               ; preds = %3
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32* (%struct.TYPE_15__*, %struct.TYPE_16__*)*, i32* (%struct.TYPE_15__*, %struct.TYPE_16__*)** %35, align 8
  %37 = icmp ne i32* (%struct.TYPE_15__*, %struct.TYPE_16__*)* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32* (%struct.TYPE_15__*, %struct.TYPE_16__*)*, i32* (%struct.TYPE_15__*, %struct.TYPE_16__*)** %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = call i32* %41(%struct.TYPE_15__* %42, %struct.TYPE_16__* %43)
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32* @ExpandRowReference(%struct.TYPE_15__* %48, i32* %49, i32 %50)
  store i32* %51, i32** %4, align 8
  br label %197

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %9, align 4
  switch i32 %54, label %104 [
    i32 2, label %55
    i32 3, label %66
    i32 4, label %80
  ]

55:                                               ; preds = %53
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @linitial(i32* %56)
  %58 = call i8* @strVal(i32 %57)
  store i8* %58, i8** %11, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32* @refnameRangeTblEntry(%struct.TYPE_15__* %59, i8* %60, i8* %61, i32 %64, i32* %13)
  store i32* %65, i32** %12, align 8
  br label %105

66:                                               ; preds = %53
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @linitial(i32* %67)
  %69 = call i8* @strVal(i32 %68)
  store i8* %69, i8** %10, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @lsecond(i32* %70)
  %72 = call i8* @strVal(i32 %71)
  store i8* %72, i8** %11, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32* @refnameRangeTblEntry(%struct.TYPE_15__* %73, i8* %74, i8* %75, i32 %78, i32* %13)
  store i32* %79, i32** %12, align 8
  br label %105

80:                                               ; preds = %53
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @linitial(i32* %81)
  %83 = call i8* @strVal(i32 %82)
  store i8* %83, i8** %16, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i32, i32* @MyDatabaseId, align 4
  %86 = call i32 @get_database_name(i32 %85)
  %87 = call i32 @strcmp(i8* %84, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  store i32 1, i32* %14, align 4
  br label %105

90:                                               ; preds = %80
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @lsecond(i32* %91)
  %93 = call i8* @strVal(i32 %92)
  store i8* %93, i8** %10, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @lthird(i32* %94)
  %96 = call i8* @strVal(i32 %95)
  store i8* %96, i8** %11, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32* @refnameRangeTblEntry(%struct.TYPE_15__* %97, i8* %98, i8* %99, i32 %102, i32* %13)
  store i32* %103, i32** %12, align 8
  br label %105

104:                                              ; preds = %53
  store i32 2, i32* %14, align 4
  br label %105

105:                                              ; preds = %104, %90, %89, %66, %55
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32* (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)*, i32* (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)** %107, align 8
  %109 = icmp ne i32* (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)* %108, null
  br i1 %109, label %110, label %144

110:                                              ; preds = %105
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32* (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)*, i32* (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)** %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = call i32* %113(%struct.TYPE_15__* %114, %struct.TYPE_16__* %115, i32* %116)
  store i32* %117, i32** %17, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %143

120:                                              ; preds = %110
  %121 = load i32*, i32** %12, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %138

123:                                              ; preds = %120
  %124 = load i32, i32* @ERROR, align 4
  %125 = load i32, i32* @ERRCODE_AMBIGUOUS_COLUMN, align 4
  %126 = call i32 @errcode(i32 %125)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @NameListToString(i32* %129)
  %131 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @parser_errposition(%struct.TYPE_15__* %132, i32 %135)
  %137 = call i32 @ereport(i32 %124, i32 %136)
  br label %138

138:                                              ; preds = %123, %120
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = load i32*, i32** %17, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32* @ExpandRowReference(%struct.TYPE_15__* %139, i32* %140, i32 %141)
  store i32* %142, i32** %4, align 8
  br label %197

143:                                              ; preds = %110
  br label %144

144:                                              ; preds = %143, %105
  %145 = load i32*, i32** %12, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %189

147:                                              ; preds = %144
  %148 = load i32, i32* %14, align 4
  switch i32 %148, label %188 [
    i32 0, label %149
    i32 1, label %158
    i32 2, label %173
  ]

149:                                              ; preds = %147
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = load i8*, i8** %11, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @makeRangeVar(i8* %151, i8* %152, i32 %155)
  %157 = call i32 @errorMissingRTE(%struct.TYPE_15__* %150, i32 %156)
  br label %188

158:                                              ; preds = %147
  %159 = load i32, i32* @ERROR, align 4
  %160 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %161 = call i32 @errcode(i32 %160)
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @NameListToString(i32* %164)
  %166 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %165)
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @parser_errposition(%struct.TYPE_15__* %167, i32 %170)
  %172 = call i32 @ereport(i32 %159, i32 %171)
  br label %188

173:                                              ; preds = %147
  %174 = load i32, i32* @ERROR, align 4
  %175 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %176 = call i32 @errcode(i32 %175)
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @NameListToString(i32* %179)
  %181 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %180)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @parser_errposition(%struct.TYPE_15__* %182, i32 %185)
  %187 = call i32 @ereport(i32 %174, i32 %186)
  br label %188

188:                                              ; preds = %147, %173, %158, %149
  br label %189

189:                                              ; preds = %188, %144
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %191 = load i32*, i32** %12, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32* @ExpandSingleTable(%struct.TYPE_15__* %190, i32* %191, i32 %194, i32 %195)
  store i32* %196, i32** %4, align 8
  br label %197

197:                                              ; preds = %189, %138, %47, %25
  %198 = load i32*, i32** %4, align 8
  ret i32* %198
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @ExpandAllTables(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @ExpandRowReference(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @linitial(i32*) #1

declare dso_local i32* @refnameRangeTblEntry(%struct.TYPE_15__*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @lsecond(i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @get_database_name(i32) #1

declare dso_local i32 @lthird(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @NameListToString(i32*) #1

declare dso_local i32 @parser_errposition(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @errorMissingRTE(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @makeRangeVar(i8*, i8*, i32) #1

declare dso_local i32* @ExpandSingleTable(%struct.TYPE_15__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
