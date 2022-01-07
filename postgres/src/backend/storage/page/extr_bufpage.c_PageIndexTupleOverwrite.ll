; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageIndexTupleOverwrite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageIndexTupleOverwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i32 }

@SizeOfPageHeaderData = common dso_local global i64 0, align 8
@BLCKSZ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"corrupted page pointers: lower = %u, upper = %u, special = %u\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid index offnum: %u\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"corrupted line pointer: offset = %u, size = %u\00", align 1
@FirstOffsetNumber = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PageIndexTupleOverwrite(%struct.TYPE_14__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %10, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SizeOfPageHeaderData, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %59, label %26

26:                                               ; preds = %4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %59, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = zext i32 %40 to i64
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %34
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BLCKSZ, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = zext i32 %55 to i64
  %57 = call i32 @MAXALIGN(i64 %56)
  %58 = icmp ne i32 %52, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %49, %43, %34, %26, %4
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %70, i32 %73)
  %75 = call i32 @ereport(i32 %60, i32 %74)
  br label %76

76:                                               ; preds = %59, %49
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = call i32 @PageGetMaxOffsetNumber(%struct.TYPE_14__* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81, %76
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @elog(i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call %struct.TYPE_15__* @PageGetItemId(%struct.TYPE_14__* %90, i32 %91)
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %11, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %94 = call i64 @ItemIdHasStorage(%struct.TYPE_15__* %93)
  %95 = call i32 @Assert(i64 %94)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %97 = call i32 @ItemIdGetLength(%struct.TYPE_15__* %96)
  store i32 %97, i32* %12, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %99 = call i32 @ItemIdGetOffset(%struct.TYPE_15__* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = zext i32 %100 to i64
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %101, %104
  br i1 %105, label %120, label %106

106:                                              ; preds = %89
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add i32 %107, %108
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ugt i32 %109, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = zext i32 %116 to i64
  %118 = call i32 @MAXALIGN(i64 %117)
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %114, %106, %89
  %121 = load i32, i32* @ERROR, align 4
  %122 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %123 = call i32 @errcode(i32 %122)
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %125)
  %127 = call i32 @ereport(i32 %121, i32 %126)
  br label %128

128:                                              ; preds = %120, %114
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = call i32 @MAXALIGN(i64 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @MAXALIGN(i64 %132)
  %134 = zext i32 %133 to i64
  store i64 %134, i64* %14, align 8
  %135 = load i64, i64* %14, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %140, %143
  %145 = add nsw i64 %137, %144
  %146 = icmp sgt i64 %135, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %128
  store i32 0, i32* %5, align 4
  br label %222

148:                                              ; preds = %128
  %149 = load i32, i32* %12, align 4
  %150 = load i64, i64* %14, align 8
  %151 = trunc i64 %150 to i32
  %152 = sub nsw i32 %149, %151
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %209

155:                                              ; preds = %148
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %157 = bitcast %struct.TYPE_14__* %156 to i8*
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  store i8* %161, i8** %17, align 8
  %162 = load i8*, i8** %17, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8*, i8** %17, align 8
  %167 = load i32, i32* %13, align 4
  %168 = zext i32 %167 to i64
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %168, %171
  %173 = trunc i64 %172 to i32
  %174 = call i32 @memmove(i8* %165, i8* %166, i32 %173)
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, %176
  store i64 %180, i64* %178, align 8
  %181 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %181, i32* %18, align 4
  br label %182

182:                                              ; preds = %205, %155
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* %16, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %182
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %188 = load i32, i32* %18, align 4
  %189 = call %struct.TYPE_15__* @PageGetItemId(%struct.TYPE_14__* %187, i32 %188)
  store %struct.TYPE_15__* %189, %struct.TYPE_15__** %19, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %191 = call i64 @ItemIdHasStorage(%struct.TYPE_15__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %186
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %195 = call i32 @ItemIdGetOffset(%struct.TYPE_15__* %194)
  %196 = load i32, i32* %13, align 4
  %197 = icmp ule i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %198, %193, %186
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %18, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %18, align 4
  br label %182

208:                                              ; preds = %182
  br label %209

209:                                              ; preds = %208, %148
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %15, align 4
  %213 = add i32 %211, %212
  %214 = load i64, i64* %9, align 8
  %215 = call i32 @ItemIdSetNormal(%struct.TYPE_15__* %210, i32 %213, i64 %214)
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %218 = call i32 @PageGetItem(%struct.TYPE_14__* %216, %struct.TYPE_15__* %217)
  %219 = load i32, i32* %8, align 4
  %220 = load i64, i64* %9, align 8
  %221 = call i32 @memcpy(i32 %218, i32 %219, i64 %220)
  store i32 1, i32* %5, align 4
  br label %222

222:                                              ; preds = %209, %147
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local i32 @MAXALIGN(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, ...) #1

declare dso_local i32 @PageGetMaxOffsetNumber(%struct.TYPE_14__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local %struct.TYPE_15__* @PageGetItemId(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @Assert(i64) #1

declare dso_local i64 @ItemIdHasStorage(%struct.TYPE_15__*) #1

declare dso_local i32 @ItemIdGetLength(%struct.TYPE_15__*) #1

declare dso_local i32 @ItemIdGetOffset(%struct.TYPE_15__*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @ItemIdSetNormal(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @PageGetItem(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
