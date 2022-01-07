; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_SnapBuildCommitTxn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_SnapBuildCommitTxn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }

@SNAPBUILD_START = common dso_local global i64 0, align 8
@SNAPBUILD_BUILDING_SNAPSHOT = common dso_local global i64 0, align 8
@SNAPBUILD_CONSISTENT = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"found subtransaction %u:%u with catalog changes\00", align 1
@DEBUG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"found top level transaction %u, with catalog changes\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"forced transaction %u to do timetravel\00", align 1
@SNAPBUILD_FULL_SNAPSHOT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SnapBuildCommitTxn(%struct.TYPE_9__* %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNAPBUILD_START, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %5
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNAPBUILD_BUILDING_SNAPSHOT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = call i32 @SnapBuildNextPhaseAt(%struct.TYPE_9__* %31)
  %33 = call i64 @TransactionIdPrecedes(i32 %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29, %5
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %42, 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %35
  br label %248

47:                                               ; preds = %29, %23
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SNAPBUILD_CONSISTENT, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i64, i64* %7, align 8
  %61 = add nsw i64 %60, 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %53
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %13, align 4
  br label %70

70:                                               ; preds = %69, %64
  br label %71

71:                                               ; preds = %70, %47
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %119, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %122

76:                                               ; preds = %72
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %16, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = call i64 @ReorderBufferXidHasCatalogChanges(i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %76
  store i32 1, i32* %14, align 4
  store i32 1, i32* %12, align 4
  %89 = load i32, i32* @DEBUG1, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 (i32, i8*, i32, ...) @elog(i32 %89, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @SnapBuildAddCommittedTxn(%struct.TYPE_9__* %93, i32 %94)
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i64 @NormalTransactionIdFollows(i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %100, %88
  br label %118

103:                                              ; preds = %76
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @SnapBuildAddCommittedTxn(%struct.TYPE_9__* %107, i32 %108)
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i64 @NormalTransactionIdFollows(i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %114, %106
  br label %117

117:                                              ; preds = %116, %103
  br label %118

118:                                              ; preds = %117, %102
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %72

122:                                              ; preds = %72
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i64 @ReorderBufferXidHasCatalogChanges(i32 %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %122
  %130 = load i32, i32* @DEBUG2, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 (i32, i8*, i32, ...) @elog(i32 %130, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @SnapBuildAddCommittedTxn(%struct.TYPE_9__* %133, i32 %134)
  br label %155

136:                                              ; preds = %122
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @SnapBuildAddCommittedTxn(%struct.TYPE_9__* %140, i32 %141)
  br label %154

143:                                              ; preds = %136
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load i32, i32* @DEBUG2, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 (i32, i8*, i32, ...) @elog(i32 %147, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @SnapBuildAddCommittedTxn(%struct.TYPE_9__* %150, i32 %151)
  br label %153

153:                                              ; preds = %146, %143
  br label %154

154:                                              ; preds = %153, %139
  br label %155

155:                                              ; preds = %154, %129
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %155
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  br label %162

162:                                              ; preds = %158, %155
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br label %168

168:                                              ; preds = %165, %162
  %169 = phi i1 [ true, %162 ], [ %167, %165 ]
  %170 = zext i1 %169 to i32
  %171 = call i32 @Assert(i32 %170)
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %168
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @TransactionIdIsValid(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %174
  %181 = load i32, i32* %15, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @TransactionIdFollowsOrEquals(i32 %181, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %180, %174
  %188 = load i32, i32* %15, align 4
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @TransactionIdAdvance(i32 %193)
  br label %195

195:                                              ; preds = %187, %180, %168
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %248

198:                                              ; preds = %195
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @SNAPBUILD_FULL_SNAPSHOT, align 8
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %248

205:                                              ; preds = %198
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @SnapBuildSnapDecRefcount(i64 %213)
  br label %215

215:                                              ; preds = %210, %205
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %217 = call i64 @SnapBuildBuildSnapshot(%struct.TYPE_9__* %216)
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @ReorderBufferXidHasBaseSnapshot(i32 %222, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %240, label %226

226:                                              ; preds = %215
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @SnapBuildSnapIncRefcount(i64 %229)
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = load i64, i64* %7, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @ReorderBufferSetBaseSnapshot(i32 %233, i32 %234, i64 %235, i64 %238)
  br label %240

240:                                              ; preds = %226, %215
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @SnapBuildSnapIncRefcount(i64 %243)
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %246 = load i64, i64* %7, align 8
  %247 = call i32 @SnapBuildDistributeNewCatalogSnapshot(%struct.TYPE_9__* %245, i64 %246)
  br label %248

248:                                              ; preds = %46, %204, %240, %195
  ret void
}

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @SnapBuildNextPhaseAt(%struct.TYPE_9__*) #1

declare dso_local i64 @ReorderBufferXidHasCatalogChanges(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

declare dso_local i32 @SnapBuildAddCommittedTxn(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @NormalTransactionIdFollows(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @TransactionIdFollowsOrEquals(i32, i32) #1

declare dso_local i32 @TransactionIdAdvance(i32) #1

declare dso_local i32 @SnapBuildSnapDecRefcount(i64) #1

declare dso_local i64 @SnapBuildBuildSnapshot(%struct.TYPE_9__*) #1

declare dso_local i32 @ReorderBufferXidHasBaseSnapshot(i32, i32) #1

declare dso_local i32 @SnapBuildSnapIncRefcount(i64) #1

declare dso_local i32 @ReorderBufferSetBaseSnapshot(i32, i32, i64, i64) #1

declare dso_local i32 @SnapBuildDistributeNewCatalogSnapshot(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
