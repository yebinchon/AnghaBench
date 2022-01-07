; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_visibility/extr_pg_visibility.c_collect_corrupt_items.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_visibility/extr_pg_visibility.c_collect_corrupt_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }

@InvalidBuffer = common dso_local global i64 0, align 8
@BAS_BULKREAD = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@PROCARRAY_FLAGS_VACUUM = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32, i32, i32)* @collect_corrupt_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @collect_corrupt_items(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_8__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %23 = load i64, i64* @InvalidBuffer, align 8
  store i64 %23, i64* %11, align 8
  %24 = load i32, i32* @BAS_BULKREAD, align 4
  %25 = call i32 @GetAccessStrategy(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @PROCARRAY_FLAGS_VACUUM, align 4
  %31 = call i32 @GetOldestXmin(i32* null, i32 %30)
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %29, %3
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @AccessShareLock, align 4
  %35 = call i32 @relation_open(i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @check_relation_relkind(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @RelationGetNumberOfBlocks(i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = call %struct.TYPE_7__* @palloc0(i32 12)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %9, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 64, i32* %44, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32 @palloc(i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  store i64 0, i64* %10, align 8
  br label %54

54:                                               ; preds = %218, %32
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %221

58:                                               ; preds = %54
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %59 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @VM_ALL_FROZEN(i32 %63, i64 %64, i64* %11)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 1, i32* %14, align 4
  br label %68

68:                                               ; preds = %67, %62, %58
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @VM_ALL_VISIBLE(i32 %72, i64 %73, i64* %11)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1, i32* %15, align 4
  br label %77

77:                                               ; preds = %76, %71, %68
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  br label %218

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @MAIN_FORKNUM, align 4
  %87 = load i64, i64* %10, align 8
  %88 = load i32, i32* @RBM_NORMAL, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i64 @ReadBufferExtended(i32 %85, i32 %86, i64 %87, i32 %88, i32 %89)
  store i64 %90, i64* %16, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %93 = call i32 @LockBuffer(i64 %91, i32 %92)
  %94 = load i64, i64* %16, align 8
  %95 = call i32 @BufferGetPage(i64 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = call i64 @PageGetMaxOffsetNumber(i32 %96)
  store i64 %97, i64* %19, align 8
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %84
  %101 = load i32, i32* %7, align 4
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @VM_ALL_FROZEN(i32 %101, i64 %102, i64* %11)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %105, %100, %84
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* %7, align 4
  %111 = load i64, i64* %10, align 8
  %112 = call i64 @VM_ALL_VISIBLE(i32 %110, i64 %111, i64* %11)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  store i32 0, i32* %15, align 4
  br label %115

115:                                              ; preds = %114, %109, %106
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i64, i64* %16, align 8
  %123 = call i32 @UnlockReleaseBuffer(i64 %122)
  br label %218

124:                                              ; preds = %118, %115
  %125 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %125, i64* %18, align 8
  br label %126

126:                                              ; preds = %212, %124
  %127 = load i64, i64* %18, align 8
  %128 = load i64, i64* %19, align 8
  %129 = icmp sle i64 %127, %128
  br i1 %129, label %130, label %215

130:                                              ; preds = %126
  %131 = load i32, i32* %17, align 4
  %132 = load i64, i64* %18, align 8
  %133 = call i32 @PageGetItemId(i32 %131, i64 %132)
  store i32 %133, i32* %21, align 4
  %134 = load i32, i32* %21, align 4
  %135 = call i32 @ItemIdIsUsed(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* %21, align 4
  %139 = call i64 @ItemIdIsRedirected(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137, %130
  br label %212

142:                                              ; preds = %137
  %143 = load i32, i32* %21, align 4
  %144 = call i64 @ItemIdIsDead(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* %18, align 8
  %150 = call i32 @ItemPointerSet(i32* %147, i64 %148, i64 %149)
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %153 = call i32 @record_corrupt_item(%struct.TYPE_7__* %151, i32* %152)
  br label %212

154:                                              ; preds = %142
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %156 = load i64, i64* %10, align 8
  %157 = load i64, i64* %18, align 8
  %158 = call i32 @ItemPointerSet(i32* %155, i64 %156, i64 %157)
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %21, align 4
  %161 = call i64 @PageGetItem(i32 %159, i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i64 %161, i64* %162, align 8
  %163 = load i32, i32* %21, align 4
  %164 = call i32 @ItemIdGetLength(i32 %163)
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* %4, align 4
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store i32 %166, i32* %167, align 8
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %198

170:                                              ; preds = %154
  %171 = load i32, i32* %13, align 4
  %172 = load i64, i64* %16, align 8
  %173 = call i32 @tuple_all_visible(%struct.TYPE_8__* %20, i32 %171, i64 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %198, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* @PROCARRAY_FLAGS_VACUUM, align 4
  %177 = call i32 @GetOldestXmin(i32* null, i32 %176)
  store i32 %177, i32* %22, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %22, align 4
  %180 = call i32 @TransactionIdPrecedes(i32 %178, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %175
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %185 = call i32 @record_corrupt_item(%struct.TYPE_7__* %183, i32* %184)
  br label %197

186:                                              ; preds = %175
  %187 = load i32, i32* %22, align 4
  store i32 %187, i32* %13, align 4
  %188 = load i32, i32* %13, align 4
  %189 = load i64, i64* %16, align 8
  %190 = call i32 @tuple_all_visible(%struct.TYPE_8__* %20, i32 %188, i64 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %186
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %195 = call i32 @record_corrupt_item(%struct.TYPE_7__* %193, i32* %194)
  br label %196

196:                                              ; preds = %192, %186
  br label %197

197:                                              ; preds = %196, %182
  br label %198

198:                                              ; preds = %197, %170, %154
  %199 = load i32, i32* %14, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i64 @heap_tuple_needs_eventual_freeze(i64 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %209 = call i32 @record_corrupt_item(%struct.TYPE_7__* %207, i32* %208)
  br label %210

210:                                              ; preds = %206, %201
  br label %211

211:                                              ; preds = %210, %198
  br label %212

212:                                              ; preds = %211, %146, %141
  %213 = load i64, i64* %18, align 8
  %214 = call i64 @OffsetNumberNext(i64 %213)
  store i64 %214, i64* %18, align 8
  br label %126

215:                                              ; preds = %126
  %216 = load i64, i64* %16, align 8
  %217 = call i32 @UnlockReleaseBuffer(i64 %216)
  br label %218

218:                                              ; preds = %215, %121, %83
  %219 = load i64, i64* %10, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %10, align 8
  br label %54

221:                                              ; preds = %54
  %222 = load i64, i64* %11, align 8
  %223 = load i64, i64* @InvalidBuffer, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i64, i64* %11, align 8
  %227 = call i32 @ReleaseBuffer(i64 %226)
  br label %228

228:                                              ; preds = %225, %221
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* @AccessShareLock, align 4
  %231 = call i32 @relation_close(i32 %229, i32 %230)
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  store i32 0, i32* %238, align 4
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  ret %struct.TYPE_7__* %239
}

declare dso_local i32 @GetAccessStrategy(i32) #1

declare dso_local i32 @GetOldestXmin(i32*, i32) #1

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local i32 @check_relation_relkind(i32) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local %struct.TYPE_7__* @palloc0(i32) #1

declare dso_local i32 @palloc(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @VM_ALL_FROZEN(i32, i64, i64*) #1

declare dso_local i64 @VM_ALL_VISIBLE(i32, i64, i64*) #1

declare dso_local i64 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i64) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @ItemIdIsUsed(i32) #1

declare dso_local i64 @ItemIdIsRedirected(i32) #1

declare dso_local i64 @ItemIdIsDead(i32) #1

declare dso_local i32 @ItemPointerSet(i32*, i64, i64) #1

declare dso_local i32 @record_corrupt_item(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i32 @tuple_all_visible(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i64 @heap_tuple_needs_eventual_freeze(i64) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @ReleaseBuffer(i64) #1

declare dso_local i32 @relation_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
