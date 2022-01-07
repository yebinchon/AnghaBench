; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_compare_scankey_args.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_compare_scankey_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32, i32, i32 }

@SK_ISNULL = common dso_local global i32 0, align 4
@SK_SEARCHNULL = common dso_local global i32 0, align 4
@SK_SEARCHNOTNULL = common dso_local global i32 0, align 4
@SK_BT_NULLS_FIRST = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unrecognized StrategyNumber: %d\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@SK_BT_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*)* @_bt_compare_scankey_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_compare_scankey_args(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %12, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %27, %30
  %32 = load i32, i32* @SK_ISNULL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %120

35:                                               ; preds = %5
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SK_ISNULL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SK_SEARCHNULL, align 4
  %47 = load i32, i32* @SK_SEARCHNOTNULL, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = call i32 @Assert(i32 %49)
  store i32 1, i32* %19, align 4
  br label %52

51:                                               ; preds = %35
  store i32 0, i32* %19, align 4
  br label %52

52:                                               ; preds = %51, %42
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SK_ISNULL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SK_SEARCHNULL, align 4
  %64 = load i32, i32* @SK_SEARCHNOTNULL, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = call i32 @Assert(i32 %66)
  store i32 1, i32* %20, align 4
  br label %69

68:                                               ; preds = %52
  store i32 0, i32* %20, align 4
  br label %69

69:                                               ; preds = %68, %59
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %18, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SK_BT_NULLS_FIRST, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @BTCommuteStrategyNumber(i32 %80)
  store i32 %81, i32* %18, align 4
  br label %82

82:                                               ; preds = %79, %69
  %83 = load i32, i32* %18, align 4
  switch i32 %83, label %114 [
    i32 128, label %84
    i32 129, label %90
    i32 132, label %96
    i32 131, label %102
    i32 130, label %108
  ]

84:                                               ; preds = %82
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp slt i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  br label %119

90:                                               ; preds = %82
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %20, align 4
  %93 = icmp sle i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32*, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  br label %119

96:                                               ; preds = %82
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %20, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32*, i32** %11, align 8
  store i32 %100, i32* %101, align 4
  br label %119

102:                                              ; preds = %82
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* %20, align 4
  %105 = icmp sge i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32*, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  br label %119

108:                                              ; preds = %82
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp sgt i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i32*, i32** %11, align 8
  store i32 %112, i32* %113, align 4
  br label %119

114:                                              ; preds = %82
  %115 = load i32, i32* @ERROR, align 4
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @elog(i32 %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** %11, align 8
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %108, %102, %96, %90, %84
  store i32 1, i32* %6, align 4
  br label %243

120:                                              ; preds = %5
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %123, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @Assert(i32 %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %132, i64 %137
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %16, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %13, align 8
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* @InvalidOid, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %120
  %147 = load i64, i64* %16, align 8
  store i64 %147, i64* %13, align 8
  br label %148

148:                                              ; preds = %146, %120
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %14, align 8
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* @InvalidOid, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i64, i64* %16, align 8
  store i64 %156, i64* %14, align 8
  br label %157

157:                                              ; preds = %155, %148
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %15, align 8
  %161 = load i64, i64* %15, align 8
  %162 = load i64, i64* @InvalidOid, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i64, i64* %16, align 8
  store i64 %165, i64* %15, align 8
  br label %166

166:                                              ; preds = %164, %157
  %167 = load i64, i64* %13, align 8
  %168 = load i64, i64* %16, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %166
  %171 = load i64, i64* %14, align 8
  %172 = load i64, i64* %15, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %170
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 6
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @FunctionCall2Coll(i32* %176, i32 %179, i32 %182, i32 %185)
  %187 = call i32 @DatumGetBool(i32 %186)
  %188 = load i32*, i32** %11, align 8
  store i32 %187, i32* %188, align 4
  store i32 1, i32* %6, align 4
  br label %243

189:                                              ; preds = %170, %166
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %18, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @SK_BT_DESC, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %189
  %200 = load i32, i32* %18, align 4
  %201 = call i32 @BTCommuteStrategyNumber(i32 %200)
  store i32 %201, i32* %18, align 4
  br label %202

202:                                              ; preds = %199, %189
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %205, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i64, i64* %13, align 8
  %214 = load i64, i64* %14, align 8
  %215 = load i32, i32* %18, align 4
  %216 = call i64 @get_opfamily_member(i32 %212, i64 %213, i64 %214, i32 %215)
  store i64 %216, i64* %17, align 8
  %217 = load i64, i64* %17, align 8
  %218 = call i64 @OidIsValid(i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %241

220:                                              ; preds = %202
  %221 = load i64, i64* %17, align 8
  %222 = call i32 @get_opcode(i64 %221)
  store i32 %222, i32* %21, align 4
  %223 = load i32, i32* %21, align 4
  %224 = call i64 @RegProcedureIsValid(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %240

226:                                              ; preds = %220
  %227 = load i32, i32* %21, align 4
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @OidFunctionCall2Coll(i32 %227, i32 %230, i32 %233, i32 %236)
  %238 = call i32 @DatumGetBool(i32 %237)
  %239 = load i32*, i32** %11, align 8
  store i32 %238, i32* %239, align 4
  store i32 1, i32* %6, align 4
  br label %243

240:                                              ; preds = %220
  br label %241

241:                                              ; preds = %240, %202
  %242 = load i32*, i32** %11, align 8
  store i32 0, i32* %242, align 4
  store i32 0, i32* %6, align 4
  br label %243

243:                                              ; preds = %241, %226, %174, %119
  %244 = load i32, i32* %6, align 4
  ret i32 %244
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BTCommuteStrategyNumber(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i32, i32) #1

declare dso_local i64 @get_opfamily_member(i32, i64, i64, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @get_opcode(i64) #1

declare dso_local i64 @RegProcedureIsValid(i32) #1

declare dso_local i32 @OidFunctionCall2Coll(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
