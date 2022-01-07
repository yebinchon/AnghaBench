; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageIndexTupleDelete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageIndexTupleDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i32* }
%struct.TYPE_13__ = type { i32 }

@SizeOfPageHeaderData = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"corrupted page pointers: lower = %u, upper = %u, special = %u\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid index offnum: %u\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"corrupted line pointer: offset = %u, size = %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PageIndexTupleDelete(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SizeOfPageHeaderData, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %55, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %55, label %29

29:                                               ; preds = %21
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %55, label %38

38:                                               ; preds = %29
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BLCKSZ, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %55, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @MAXALIGN(i32 %51)
  %53 = zext i32 %52 to i64
  %54 = icmp ne i64 %47, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %44, %38, %29, %21, %2
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, i64 %67)
  %69 = call i32 @ereport(i32 %56, i32 %68)
  br label %70

70:                                               ; preds = %55, %44
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = call i32 @PageGetMaxOffsetNumber(%struct.TYPE_12__* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75, %70
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @elog(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %4, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call %struct.TYPE_13__* @PageGetItemId(%struct.TYPE_12__* %86, i32 %87)
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %7, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = call i32 @ItemIdHasStorage(%struct.TYPE_13__* %89)
  %91 = call i32 @Assert(i32 %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = call i32 @ItemIdGetLength(%struct.TYPE_13__* %92)
  store i32 %93, i32* %8, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = call i32 @ItemIdGetOffset(%struct.TYPE_13__* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %115, label %101

101:                                              ; preds = %83
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %102, %103
  %105 = zext i32 %104 to i64
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %105, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @MAXALIGN(i32 %112)
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %110, %101, %83
  %116 = load i32, i32* @ERROR, align 4
  %117 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %118 = call i32 @errcode(i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %120)
  %122 = call i32 @ereport(i32 %116, i32 %121)
  br label %123

123:                                              ; preds = %115, %110
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @MAXALIGN(i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = bitcast i32* %136 to i8*
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = bitcast %struct.TYPE_12__* %138 to i8*
  %140 = ptrtoint i8* %137 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sub nsw i64 %129, %142
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %165

147:                                              ; preds = %123
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = bitcast i32* %153 to i8*
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = bitcast i32* %161 to i8*
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @memmove(i8* %154, i8* %162, i32 %163)
  br label %165

165:                                              ; preds = %147, %123
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %167 = bitcast %struct.TYPE_12__* %166 to i8*
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %167, i64 %171
  store i8* %172, i8** %6, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ugt i32 %173, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %165
  %179 = load i8*, i8** %6, align 8
  %180 = load i32, i32* %8, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i8*, i8** %6, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sub i32 %184, %187
  %189 = call i32 @memmove(i8* %182, i8* %183, i32 %188)
  br label %190

190:                                              ; preds = %178, %165
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = add i32 %194, %191
  store i32 %195, i32* %193, align 4
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = sub i64 %199, 4
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %197, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %203 = call i32 @PageIsEmpty(%struct.TYPE_12__* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %234, label %205

205:                                              ; preds = %190
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %208

208:                                              ; preds = %230, %205
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %12, align 4
  %211 = icmp sle i32 %209, %210
  br i1 %211, label %212, label %233

212:                                              ; preds = %208
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call %struct.TYPE_13__* @PageGetItemId(%struct.TYPE_12__* %213, i32 %214)
  store %struct.TYPE_13__* %215, %struct.TYPE_13__** %14, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %217 = call i32 @ItemIdHasStorage(%struct.TYPE_13__* %216)
  %218 = call i32 @Assert(i32 %217)
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %220 = call i32 @ItemIdGetOffset(%struct.TYPE_13__* %219)
  %221 = load i32, i32* %9, align 4
  %222 = icmp ule i32 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %212
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = add i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %223, %212
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %13, align 4
  br label %208

233:                                              ; preds = %208
  br label %234

234:                                              ; preds = %233, %190
  ret void
}

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, ...) #1

declare dso_local i32 @PageGetMaxOffsetNumber(%struct.TYPE_12__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local %struct.TYPE_13__* @PageGetItemId(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemIdHasStorage(%struct.TYPE_13__*) #1

declare dso_local i32 @ItemIdGetLength(%struct.TYPE_13__*) #1

declare dso_local i32 @ItemIdGetOffset(%struct.TYPE_13__*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @PageIsEmpty(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
