; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_compareItems.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_compareItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@jpbTrue = common dso_local global i32 0, align 4
@jpbFalse = common dso_local global i32 0, align 4
@jpbUnknown = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid jsonb value type %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unrecognized jsonpath operation: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)* @compareItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compareItems(i32 %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 137
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 137
  br i1 %29, label %30, label %39

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @jpbTrue, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @jpbFalse, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %5, align 4
  br label %215

39:                                               ; preds = %25
  %40 = load i32, i32* @jpbUnknown, align 4
  store i32 %40, i32* %5, align 4
  br label %215

41:                                               ; preds = %4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  switch i64 %44, label %168 [
    i64 137, label %45
    i64 139, label %46
    i64 136, label %67
    i64 134, label %77
    i64 138, label %138
    i64 140, label %166
    i64 141, label %166
    i64 135, label %166
  ]

45:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %175

46:                                               ; preds = %41
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %65

57:                                               ; preds = %46
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 -1
  br label %65

65:                                               ; preds = %57, %56
  %66 = phi i32 [ 0, %56 ], [ %64, %57 ]
  store i32 %66, i32* %10, align 4
  br label %175

67:                                               ; preds = %41
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @compareNumeric(i32 %71, i32 %75)
  store i32 %76, i32* %10, align 4
  br label %175

77:                                               ; preds = %41
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 133
  br i1 %79, label %80, label %116

80:                                               ; preds = %77
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %85, %90
  br i1 %91, label %110, label %92

92:                                               ; preds = %80
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @memcmp(i32 %97, i32 %102, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %92, %80
  %111 = load i32, i32* @jpbFalse, align 4
  br label %114

112:                                              ; preds = %92
  %113 = load i32, i32* @jpbTrue, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  store i32 %115, i32* %5, align 4
  br label %215

116:                                              ; preds = %77
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @compareStrings(i32 %121, i32 %126, i32 %131, i32 %136)
  store i32 %137, i32* %10, align 4
  br label %175

138:                                              ; preds = %41
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @compareDatetime(i32 %143, i32 %148, i32 %153, i32 %158, i32 %159, i32* %12)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %138
  %164 = load i32, i32* @jpbUnknown, align 4
  store i32 %164, i32* %5, align 4
  br label %215

165:                                              ; preds = %138
  br label %175

166:                                              ; preds = %41, %41, %41
  %167 = load i32, i32* @jpbUnknown, align 4
  store i32 %167, i32* %5, align 4
  br label %215

168:                                              ; preds = %41
  %169 = load i32, i32* @ERROR, align 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 @elog(i32 %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %168, %165, %116, %67, %65, %45
  %176 = load i32, i32* %6, align 4
  switch i32 %176, label %201 [
    i32 133, label %177
    i32 128, label %181
    i32 130, label %185
    i32 132, label %189
    i32 129, label %193
    i32 131, label %197
  ]

177:                                              ; preds = %175
  %178 = load i32, i32* %10, align 4
  %179 = icmp eq i32 %178, 0
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %11, align 4
  br label %206

181:                                              ; preds = %175
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %11, align 4
  br label %206

185:                                              ; preds = %175
  %186 = load i32, i32* %10, align 4
  %187 = icmp slt i32 %186, 0
  %188 = zext i1 %187 to i32
  store i32 %188, i32* %11, align 4
  br label %206

189:                                              ; preds = %175
  %190 = load i32, i32* %10, align 4
  %191 = icmp sgt i32 %190, 0
  %192 = zext i1 %191 to i32
  store i32 %192, i32* %11, align 4
  br label %206

193:                                              ; preds = %175
  %194 = load i32, i32* %10, align 4
  %195 = icmp sle i32 %194, 0
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %11, align 4
  br label %206

197:                                              ; preds = %175
  %198 = load i32, i32* %10, align 4
  %199 = icmp sge i32 %198, 0
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %11, align 4
  br label %206

201:                                              ; preds = %175
  %202 = load i32, i32* @ERROR, align 4
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @elog(i32 %202, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @jpbUnknown, align 4
  store i32 %205, i32* %5, align 4
  br label %215

206:                                              ; preds = %197, %193, %189, %185, %181, %177
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* @jpbTrue, align 4
  br label %213

211:                                              ; preds = %206
  %212 = load i32, i32* @jpbFalse, align 4
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi i32 [ %210, %209 ], [ %212, %211 ]
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %213, %201, %166, %163, %114, %39, %37
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @compareNumeric(i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @compareStrings(i32, i32, i32, i32) #1

declare dso_local i32 @compareDatetime(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
