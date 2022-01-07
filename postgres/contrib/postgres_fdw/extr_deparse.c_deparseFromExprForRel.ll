; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseFromExprForRel.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseFromExprForRel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i64 }
%struct.TYPE_17__ = type { i64, i64, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32**, i32*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { i32 }

@JOIN_INNER = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"(%s %s JOIN %s ON \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(TRUE)\00", align 1
@NoLock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" %s%d\00", align 1
@REL_ALIAS_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_15__*, i32, i32, i32**, i32**)* @deparseFromExprForRel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deparseFromExprForRel(i32 %0, i32* %1, %struct.TYPE_15__* %2, i32 %3, i32 %4, i32** %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_14__, align 4
  %17 = alloca %struct.TYPE_14__, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_13__, align 8
  %23 = alloca %struct.TYPE_16__*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  store i32** %6, i32*** %14, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %15, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %30 = call i64 @IS_JOIN_REL(%struct.TYPE_15__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %207

32:                                               ; preds = %7
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %18, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %81

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @bms_is_member(i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %41
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @JOIN_INNER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32**, i32*** %13, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32* @list_concat(i32* %56, i64 %59)
  %61 = load i32**, i32*** %13, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i64, i64* @NIL, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %54, %48
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %20, align 4
  br label %80

72:                                               ; preds = %65
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 1, i32* %21, align 4
  br label %79

79:                                               ; preds = %78, %72
  br label %80

80:                                               ; preds = %79, %71
  br label %81

81:                                               ; preds = %80, %41, %32
  %82 = load i32, i32* %20, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %119, label %84

84:                                               ; preds = %81
  %85 = call i32 @initStringInfo(%struct.TYPE_14__* %16)
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32**, i32*** %13, align 8
  %93 = load i32**, i32*** %14, align 8
  %94 = call i32 @deparseRangeTblRef(%struct.TYPE_14__* %16, i32* %86, %struct.TYPE_15__* %87, i32 %90, i32 %91, i32** %92, i32** %93)
  %95 = load i32, i32* %21, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %84
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @JOIN_INNER, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @Assert(i32 %103)
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NIL, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @Assert(i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @appendBinaryStringInfo(i32 %112, i32 %114, i32 %116)
  br label %234

118:                                              ; preds = %84
  br label %119

119:                                              ; preds = %118, %81
  %120 = load i32, i32* %21, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %157, label %122

122:                                              ; preds = %119
  %123 = call i32 @initStringInfo(%struct.TYPE_14__* %17)
  %124 = load i32*, i32** %9, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load i32**, i32*** %13, align 8
  %131 = load i32**, i32*** %14, align 8
  %132 = call i32 @deparseRangeTblRef(%struct.TYPE_14__* %17, i32* %124, %struct.TYPE_15__* %125, i32 %128, i32 %129, i32** %130, i32** %131)
  %133 = load i32, i32* %20, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %122
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @JOIN_INNER, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @Assert(i32 %141)
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @NIL, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @Assert(i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @appendBinaryStringInfo(i32 %150, i32 %152, i32 %154)
  br label %234

156:                                              ; preds = %122
  br label %157

157:                                              ; preds = %156, %119
  %158 = load i32, i32* %20, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  br label %164

164:                                              ; preds = %160, %157
  %165 = phi i1 [ false, %157 ], [ %163, %160 ]
  %166 = zext i1 %165 to i32
  %167 = call i32 @Assert(i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @get_jointype_name(i64 %173)
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, i32, i32, ...) @appendStringInfo(i32 %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %170, i32 %174, i32 %176)
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %201

182:                                              ; preds = %164
  %183 = load i32, i32* %8, align 4
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 4
  store i32 %183, i32* %184, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 3
  store %struct.TYPE_15__* %185, %struct.TYPE_15__** %186, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  store %struct.TYPE_15__* %187, %struct.TYPE_15__** %188, align 8
  %189 = load i32*, i32** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i32* %189, i32** %190, align 8
  %191 = load i32**, i32*** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i32** %191, i32*** %192, align 8
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @appendStringInfoChar(i32 %193, i8 signext 40)
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @appendConditions(i64 %197, %struct.TYPE_13__* %22)
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @appendStringInfoChar(i32 %199, i8 signext 41)
  br label %204

201:                                              ; preds = %164
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @appendStringInfoString(i32 %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %182
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @appendStringInfoChar(i32 %205, i8 signext 41)
  br label %234

207:                                              ; preds = %7
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32*, i32** %9, align 8
  %212 = call %struct.TYPE_16__* @planner_rt_fetch(i32 %210, i32* %211)
  store %struct.TYPE_16__* %212, %struct.TYPE_16__** %23, align 8
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @NoLock, align 4
  %217 = call i32 @table_open(i32 %215, i32 %216)
  store i32 %217, i32* %24, align 4
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %24, align 4
  %220 = call i32 @deparseRelation(i32 %218, i32 %219)
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %207
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @REL_ALIAS_PREFIX, align 4
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 (i32, i8*, i32, i32, ...) @appendStringInfo(i32 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %225, i32 %228)
  br label %230

230:                                              ; preds = %223, %207
  %231 = load i32, i32* %24, align 4
  %232 = load i32, i32* @NoLock, align 4
  %233 = call i32 @table_close(i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %97, %135, %230, %204
  ret void
}

declare dso_local i64 @IS_JOIN_REL(%struct.TYPE_15__*) #1

declare dso_local i64 @bms_is_member(i32, i32) #1

declare dso_local i32* @list_concat(i32*, i64) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @deparseRangeTblRef(%struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i32, i32, i32**, i32**) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @appendBinaryStringInfo(i32, i32, i32) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @get_jointype_name(i64) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @appendConditions(i64, %struct.TYPE_13__*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local %struct.TYPE_16__* @planner_rt_fetch(i32, i32*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @deparseRelation(i32, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
