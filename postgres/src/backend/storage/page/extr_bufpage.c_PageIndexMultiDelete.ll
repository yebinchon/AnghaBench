; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageIndexMultiDelete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageIndexMultiDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MaxIndexTuplesPerPage = common dso_local global i32 0, align 4
@SizeOfPageHeaderData = common dso_local global i64 0, align 8
@BLCKSZ = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"corrupted page pointers: lower = %u, upper = %u, special = %u\00", align 1
@FirstOffsetNumber = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"corrupted line pointer: offset = %u, size = %u\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"incorrect index offsets supplied\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"corrupted item lengths: total %u, available space %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PageIndexMultiDelete(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %7, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %11, align 8
  %39 = alloca %struct.TYPE_5__, i64 %37, align 16
  store i64 %37, i64* %12, align 8
  %40 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %13, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %45 = icmp sle i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 2
  br i1 %49, label %50, label %64

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %55, %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %6, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PageIndexTupleDelete(i32 %56, i32 %61)
  br label %51

63:                                               ; preds = %51
  store i32 1, i32* %23, align 4
  br label %228

64:                                               ; preds = %3
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @SizeOfPageHeaderData, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %87, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %87, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %87, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @BLCKSZ, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @MAXALIGN(i32 %83)
  %85 = zext i32 %84 to i64
  %86 = icmp ne i64 %81, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %80, %76, %72, %68, %64
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %90 = call i32 @errcode(i32 %89)
  %91 = load i64, i64* %8, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 (i8*, i32, i64, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %92, i64 %93, i64 %94)
  %96 = call i32 @ereport(i32 %88, i32 %95)
  br label %97

97:                                               ; preds = %87, %80
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @PageGetMaxOffsetNumber(i32 %98)
  store i32 %99, i32* %16, align 4
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %14, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %21, align 4
  %100 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %100, i32* %22, align 4
  br label %101

101:                                              ; preds = %182, %97
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %185

105:                                              ; preds = %101
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %22, align 4
  %108 = call i32* @PageGetItemId(i32 %106, i32 %107)
  store i32* %108, i32** %15, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = call i32 @ItemIdHasStorage(i32* %109)
  %111 = call i32 @Assert(i32 %110)
  %112 = load i32*, i32** %15, align 8
  %113 = call i32 @ItemIdGetLength(i32* %112)
  store i32 %113, i32* %19, align 4
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @ItemIdGetOffset(i32* %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %9, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %132, label %120

120:                                              ; preds = %105
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* %19, align 4
  %123 = add i32 %121, %122
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %10, align 8
  %126 = icmp sgt i64 %124, %125
  br i1 %126, label %132, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %20, align 4
  %130 = call i32 @MAXALIGN(i32 %129)
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %127, %120, %105
  %133 = load i32, i32* @ERROR, align 4
  %134 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %135 = call i32 @errcode(i32 %134)
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %19, align 4
  %138 = zext i32 %137 to i64
  %139 = call i32 (i8*, i32, i64, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %136, i64 %138)
  %140 = call i32 @ereport(i32 %133, i32 %139)
  br label %141

141:                                              ; preds = %132, %127
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = load i32, i32* %22, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %21, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %146, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* %21, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %21, align 4
  br label %181

156:                                              ; preds = %145, %141
  %157 = load i32, i32* %17, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %20, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %19, align 4
  %164 = call i32 @MAXALIGN(i32 %163)
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %18, align 4
  %171 = add i32 %170, %169
  store i32 %171, i32* %18, align 4
  %172 = load i32*, i32** %15, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %42, i64 %175
  store i32 %173, i32* %176, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 1
  store %struct.TYPE_5__* %178, %struct.TYPE_5__** %14, align 8
  %179 = load i32, i32* %17, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %17, align 4
  br label %181

181:                                              ; preds = %156, %153
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %22, align 4
  %184 = call i32 @OffsetNumberNext(i32 %183)
  store i32 %184, i32* %22, align 4
  br label %101

185:                                              ; preds = %101
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i32, i32* @ERROR, align 4
  %191 = call i32 @elog(i32 %190, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %185
  %193 = load i32, i32* %18, align 4
  %194 = load i64, i64* %10, align 8
  %195 = load i64, i64* %8, align 8
  %196 = sub nsw i64 %194, %195
  %197 = trunc i64 %196 to i32
  %198 = icmp ugt i32 %193, %197
  br i1 %198, label %199, label %209

199:                                              ; preds = %192
  %200 = load i32, i32* @ERROR, align 4
  %201 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %202 = call i32 @errcode(i32 %201)
  %203 = load i32, i32* %18, align 4
  %204 = load i64, i64* %10, align 8
  %205 = load i64, i64* %8, align 8
  %206 = sub nsw i64 %204, %205
  %207 = call i32 (i8*, i32, i64, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %203, i64 %206)
  %208 = call i32 @ereport(i32 %200, i32 %207)
  br label %209

209:                                              ; preds = %199, %192
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %17, align 4
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 4
  %216 = trunc i64 %215 to i32
  %217 = call i32 @memcpy(i32 %212, i32* %42, i32 %216)
  %218 = load i64, i64* @SizeOfPageHeaderData, align 8
  %219 = load i32, i32* %17, align 4
  %220 = sext i32 %219 to i64
  %221 = mul i64 %220, 4
  %222 = add i64 %218, %221
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  store i64 %222, i64* %224, align 8
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @compactify_tuples(%struct.TYPE_5__* %39, i32 %225, i32 %226)
  store i32 0, i32* %23, align 4
  br label %228

228:                                              ; preds = %209, %63
  %229 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %229)
  %230 = load i32, i32* %23, align 4
  switch i32 %230, label %232 [
    i32 0, label %231
    i32 1, label %231
  ]

231:                                              ; preds = %228, %228
  ret void

232:                                              ; preds = %228
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @PageIndexTupleDelete(i32, i32) #2

declare dso_local i32 @MAXALIGN(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i32, i64, ...) #2

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #2

declare dso_local i32* @PageGetItemId(i32, i32) #2

declare dso_local i32 @ItemIdHasStorage(i32*) #2

declare dso_local i32 @ItemIdGetLength(i32*) #2

declare dso_local i32 @ItemIdGetOffset(i32*) #2

declare dso_local i32 @OffsetNumberNext(i32) #2

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @compactify_tuples(%struct.TYPE_5__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
