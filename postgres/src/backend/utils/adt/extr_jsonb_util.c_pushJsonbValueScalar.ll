; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_pushJsonbValueScalar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_pushJsonbValueScalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i8*, i32 }
%struct.TYPE_19__ = type { i32, i32, i8* }

@jbvString = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid jsonb container type\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"unrecognized jsonb sequential processing token\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_23__**, i32, %struct.TYPE_22__*)* @pushJsonbValueScalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @pushJsonbValueScalar(%struct.TYPE_23__** %0, i32 %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca %struct.TYPE_23__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__** %0, %struct.TYPE_23__*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %210 [
    i32 136, label %9
    i32 135, label %100
    i32 131, label %139
    i32 130, label %151
    i32 134, label %159
    i32 132, label %167
    i32 133, label %172
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %11 = icmp ne %struct.TYPE_22__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %12, %9
  %20 = phi i1 [ true, %9 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %24 = call %struct.TYPE_23__* @pushState(%struct.TYPE_23__** %23)
  %25 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %25, align 8
  %26 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %7, align 8
  %29 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  store i32 129, i32* %32, align 8
  %33 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %40 = icmp ne %struct.TYPE_22__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %19
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %41, %19
  %49 = phi i1 [ false, %19 ], [ %47, %41 ]
  %50 = zext i1 %49 to i32
  %51 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  store i32 %50, i32* %56, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %58 = icmp ne %struct.TYPE_22__* %57, null
  br i1 %58, label %59, label %81

59:                                               ; preds = %48
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 129
  %71 = zext i1 %70 to i32
  %72 = call i32 @Assert(i32 %71)
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  br label %85

81:                                               ; preds = %59, %48
  %82 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  store i32 4, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %66
  %86 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = mul i64 40, %90
  %92 = trunc i64 %91 to i32
  %93 = call i8* @palloc(i32 %92)
  %94 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  store i8* %93, i8** %99, align 8
  br label %213

100:                                              ; preds = %3
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = icmp ne %struct.TYPE_22__* %101, null
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @Assert(i32 %104)
  %106 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %107 = call %struct.TYPE_23__* @pushState(%struct.TYPE_23__** %106)
  %108 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  store %struct.TYPE_23__* %107, %struct.TYPE_23__** %108, align 8
  %109 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 1
  store %struct.TYPE_22__* %111, %struct.TYPE_22__** %7, align 8
  %112 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  store i32 128, i32* %115, align 8
  %116 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  store i32 0, i32* %121, align 8
  %122 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  store i32 4, i32* %124, align 8
  %125 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = mul i64 4, %129
  %131 = trunc i64 %130 to i32
  %132 = call i8* @palloc(i32 %131)
  %133 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  store i8* %132, i8** %138, align 8
  br label %213

139:                                              ; preds = %3
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @jbvString, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @Assert(i32 %145)
  %147 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %150 = call i32 @appendKey(%struct.TYPE_23__* %148, %struct.TYPE_22__* %149)
  br label %213

151:                                              ; preds = %3
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %153 = call i32 @IsAJsonbScalar(%struct.TYPE_22__* %152)
  %154 = call i32 @Assert(i32 %153)
  %155 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %155, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %158 = call i32 @appendValue(%struct.TYPE_23__* %156, %struct.TYPE_22__* %157)
  br label %213

159:                                              ; preds = %3
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %161 = call i32 @IsAJsonbScalar(%struct.TYPE_22__* %160)
  %162 = call i32 @Assert(i32 %161)
  %163 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %163, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %166 = call i32 @appendElement(%struct.TYPE_23__* %164, %struct.TYPE_22__* %165)
  br label %213

167:                                              ; preds = %3
  %168 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  %171 = call i32 @uniqueifyJsonbObject(%struct.TYPE_22__* %170)
  br label %172

172:                                              ; preds = %3, %167
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %174 = icmp ne %struct.TYPE_22__* %173, null
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i32 @Assert(i32 %176)
  %178 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  store %struct.TYPE_22__* %180, %struct.TYPE_22__** %7, align 8
  %181 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %183, align 8
  %185 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  store %struct.TYPE_23__* %184, %struct.TYPE_23__** %185, align 8
  %186 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %186, align 8
  %188 = icmp ne %struct.TYPE_23__* %187, null
  br i1 %188, label %189, label %209

189:                                              ; preds = %172
  %190 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  switch i32 %194, label %205 [
    i32 129, label %195
    i32 128, label %200
  ]

195:                                              ; preds = %189
  %196 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %196, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %199 = call i32 @appendElement(%struct.TYPE_23__* %197, %struct.TYPE_22__* %198)
  br label %208

200:                                              ; preds = %189
  %201 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %4, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %201, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %204 = call i32 @appendValue(%struct.TYPE_23__* %202, %struct.TYPE_22__* %203)
  br label %208

205:                                              ; preds = %189
  %206 = load i32, i32* @ERROR, align 4
  %207 = call i32 @elog(i32 %206, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %200, %195
  br label %209

209:                                              ; preds = %208, %172
  br label %213

210:                                              ; preds = %3
  %211 = load i32, i32* @ERROR, align 4
  %212 = call i32 @elog(i32 %211, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %209, %159, %151, %139, %100, %85
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  ret %struct.TYPE_22__* %214
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_23__* @pushState(%struct.TYPE_23__**) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @appendKey(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @IsAJsonbScalar(%struct.TYPE_22__*) #1

declare dso_local i32 @appendValue(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @appendElement(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @uniqueifyJsonbObject(%struct.TYPE_22__*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
