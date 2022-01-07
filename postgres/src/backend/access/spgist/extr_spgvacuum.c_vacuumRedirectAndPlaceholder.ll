; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgvacuum.c_vacuumRedirectAndPlaceholder.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgvacuum.c_vacuumRedirectAndPlaceholder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@InvalidOffsetNumber = common dso_local global i64 0, align 8
@MaxIndexTuplesPerPage = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@SPGIST_REDIRECT = common dso_local global i64 0, align 8
@RecentGlobalXmin = common dso_local global i32 0, align 4
@SPGIST_PLACEHOLDER = common dso_local global i64 0, align 8
@SizeOfSpgxlogVacuumRedirect = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_SPGIST_ID = common dso_local global i32 0, align 4
@XLOG_SPGIST_VACUUM_REDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @vacuumRedirectAndPlaceholder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vacuumRedirectAndPlaceholder(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @BufferGetPage(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_6__* @SpGistPageGetOpaque(i32 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @PageGetMaxOffsetNumber(i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %24, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %29 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i64, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @InvalidTransactionId, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = call i32 (...) @START_CRIT_SECTION()
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %133, %2
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @FirstOffsetNumber, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ true, %41 ], [ %49, %46 ]
  br label %52

52:                                               ; preds = %50, %37
  %53 = phi i1 [ false, %37 ], [ %51, %50 ]
  br i1 %53, label %54, label %136

54:                                               ; preds = %52
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @PageGetItemId(i32 %56, i64 %57)
  %59 = call i64 @PageGetItem(i32 %55, i32 %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %16, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SPGIST_REDIRECT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %119

66:                                               ; preds = %54
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RecentGlobalXmin, align 4
  %71 = call i64 @TransactionIdPrecedes(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %119

73:                                               ; preds = %66
  %74 = load i64, i64* @SPGIST_PLACEHOLDER, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @TransactionIdIsValid(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %73
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @TransactionIdPrecedes(i32 %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %95, %73
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32 %106, i32* %107, align 8
  br label %108

108:                                              ; preds = %103, %95
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = call i32 @ItemPointerSetInvalid(i32* %110)
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i64, i64* %28, i64 %114
  store i64 %112, i64* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %116, align 8
  store i32 1, i32* %11, align 4
  br label %119

119:                                              ; preds = %108, %66, %54
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SPGIST_PLACEHOLDER, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = load i64, i64* %7, align 8
  store i64 %129, i64* %9, align 8
  br label %130

130:                                              ; preds = %128, %125
  br label %132

131:                                              ; preds = %119
  store i32 1, i32* %10, align 4
  br label %132

132:                                              ; preds = %131, %130
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %7, align 8
  %135 = add nsw i64 %134, -1
  store i64 %135, i64* %7, align 8
  br label %37

136:                                              ; preds = %52
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* @InvalidOffsetNumber, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %175

140:                                              ; preds = %136
  %141 = load i64, i64* %9, align 8
  store i64 %141, i64* %7, align 8
  br label %142

142:                                              ; preds = %152, %140
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* %8, align 8
  %145 = icmp sle i64 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* %7, align 8
  %149 = load i64, i64* %9, align 8
  %150 = sub nsw i64 %148, %149
  %151 = getelementptr inbounds i64, i64* %31, i64 %150
  store i64 %147, i64* %151, align 8
  br label %152

152:                                              ; preds = %146
  %153 = load i64, i64* %7, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %7, align 8
  br label %142

155:                                              ; preds = %142
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* %9, align 8
  %158 = sub nsw i64 %156, %157
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %7, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %7, align 8
  %164 = icmp sge i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @Assert(i32 %165)
  %167 = load i64, i64* %7, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = sub nsw i64 %170, %167
  store i64 %171, i64* %169, align 8
  %172 = load i32, i32* %5, align 4
  %173 = load i64, i64* %7, align 8
  %174 = call i32 @PageIndexMultiDelete(i32 %172, i64* %31, i64 %173)
  store i32 1, i32* %11, align 4
  br label %175

175:                                              ; preds = %155, %136
  %176 = load i64, i64* %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i64 %176, i64* %177, align 8
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @MarkBufferDirty(i32 %181)
  br label %183

183:                                              ; preds = %180, %175
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %210

186:                                              ; preds = %183
  %187 = load i32, i32* %3, align 4
  %188 = call i64 @RelationNeedsWAL(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %210

190:                                              ; preds = %186
  %191 = call i32 (...) @XLogBeginInsert()
  %192 = bitcast %struct.TYPE_5__* %15 to i8*
  %193 = load i32, i32* @SizeOfSpgxlogVacuumRedirect, align 4
  %194 = call i32 @XLogRegisterData(i8* %192, i32 %193)
  %195 = bitcast i64* %28 to i8*
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = mul i64 8, %197
  %199 = trunc i64 %198 to i32
  %200 = call i32 @XLogRegisterData(i8* %195, i32 %199)
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* @REGBUF_STANDARD, align 4
  %203 = call i32 @XLogRegisterBuffer(i32 0, i32 %201, i32 %202)
  %204 = load i32, i32* @RM_SPGIST_ID, align 4
  %205 = load i32, i32* @XLOG_SPGIST_VACUUM_REDIRECT, align 4
  %206 = call i32 @XLogInsert(i32 %204, i32 %205)
  store i32 %206, i32* %17, align 4
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* %17, align 4
  %209 = call i32 @PageSetLSN(i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %190, %186, %183
  %211 = call i32 (...) @END_CRIT_SECTION()
  %212 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %212)
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_6__* @SpGistPageGetOpaque(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @PageIndexMultiDelete(i32, i64*, i64) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
