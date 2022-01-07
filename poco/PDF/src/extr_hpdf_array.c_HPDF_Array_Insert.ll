; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_array.c_HPDF_Array_Insert.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_array.c_HPDF_Array_Insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c" HPDF_Array_Insert\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_INVALID_OBJECT = common dso_local global i64 0, align 8
@HPDF_OTYPE_DIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c" HPDF_Array_Add this object cannot owned by array obj=0x%08X\0A\00", align 1
@HPDF_LIMIT_MAX_ARRAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c" HPDF_Array_Add exceed limitatin of array count(%d)\0A\00", align 1
@HPDF_ARRAY_COUNT_ERR = common dso_local global i64 0, align 8
@HPDF_OTYPE_INDIRECT = common dso_local global i32 0, align 4
@HPDF_OCLASS_PROXY = common dso_local global i64 0, align 8
@HPDF_ITEM_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_Array_Insert(%struct.TYPE_12__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @HPDF_Error_GetCode(i32 %20)
  %22 = load i64, i64* @HPDF_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* @HPDF_INVALID_OBJECT, align 8
  %29 = call i64 @HPDF_SetError(i32 %27, i64 %28, i32 0)
  store i64 %29, i64* %4, align 8
  br label %175

30:                                               ; preds = %17
  %31 = load i64, i64* @HPDF_INVALID_OBJECT, align 8
  store i64 %31, i64* %4, align 8
  br label %175

32:                                               ; preds = %3
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %8, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @HPDF_OTYPE_DIRECT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = ptrtoint %struct.TYPE_12__* %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @HPDF_PTRACE(i8* %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* @HPDF_INVALID_OBJECT, align 8
  %50 = call i64 @HPDF_SetError(i32 %48, i64 %49, i32 0)
  store i64 %50, i64* %4, align 8
  br label %175

51:                                               ; preds = %32
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HPDF_LIMIT_MAX_ARRAY, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %51
  %60 = load i64, i64* @HPDF_LIMIT_MAX_ARRAY, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @HPDF_PTRACE(i8* %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @HPDF_Obj_Free(i32 %65, i8* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* @HPDF_ARRAY_COUNT_ERR, align 8
  %72 = call i64 @HPDF_SetError(i32 %70, i64 %71, i32 0)
  store i64 %72, i64* %4, align 8
  br label %175

73:                                               ; preds = %51
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @HPDF_OTYPE_INDIRECT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %73
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call %struct.TYPE_10__* @HPDF_Proxy_New(i32 %83, i8* %84)
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %11, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %87 = icmp ne %struct.TYPE_10__* %86, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %80
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @HPDF_Obj_Free(i32 %91, i8* %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @HPDF_Error_GetCode(i32 %96)
  store i64 %97, i64* %4, align 8
  br label %175

98:                                               ; preds = %80
  %99 = load i32, i32* @HPDF_OTYPE_DIRECT, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %99
  store i32 %104, i32* %102, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %106 = bitcast %struct.TYPE_10__* %105 to i8*
  store i8* %106, i8** %7, align 8
  br label %113

107:                                              ; preds = %73
  %108 = load i32, i32* @HPDF_OTYPE_DIRECT, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %98
  store i64 0, i64* %10, align 8
  br label %114

114:                                              ; preds = %165, %113
  %115 = load i64, i64* %10, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %115, %120
  br i1 %121, label %122, label %168

122:                                              ; preds = %114
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = load i64, i64* %10, align 8
  %127 = call i8* @HPDF_List_ItemAt(%struct.TYPE_13__* %125, i64 %126)
  store i8* %127, i8** %12, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = bitcast i8* %128 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %8, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @HPDF_OCLASS_PROXY, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %122
  %136 = load i8*, i8** %12, align 8
  %137 = bitcast i8* %136 to %struct.TYPE_10__*
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %13, align 8
  br label %142

140:                                              ; preds = %122
  %141 = load i8*, i8** %12, align 8
  store i8* %141, i8** %13, align 8
  br label %142

142:                                              ; preds = %140, %135
  %143 = load i8*, i8** %13, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = icmp eq i8* %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = load i8*, i8** %7, align 8
  %152 = call i64 @HPDF_List_Insert(%struct.TYPE_13__* %149, i8* %150, i8* %151)
  store i64 %152, i64* %9, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* @HPDF_OK, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %146
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 @HPDF_Obj_Free(i32 %159, i8* %160)
  br label %162

162:                                              ; preds = %156, %146
  %163 = load i64, i64* %9, align 8
  store i64 %163, i64* %4, align 8
  br label %175

164:                                              ; preds = %142
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %10, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %10, align 8
  br label %114

168:                                              ; preds = %114
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 @HPDF_Obj_Free(i32 %171, i8* %172)
  %174 = load i64, i64* @HPDF_ITEM_NOT_FOUND, align 8
  store i64 %174, i64* %4, align 8
  br label %175

175:                                              ; preds = %168, %162, %88, %59, %41, %30, %24
  %176 = load i64, i64* %4, align 8
  ret i64 %176
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @HPDF_SetError(i32, i64, i32) #1

declare dso_local i32 @HPDF_Obj_Free(i32, i8*) #1

declare dso_local %struct.TYPE_10__* @HPDF_Proxy_New(i32, i8*) #1

declare dso_local i8* @HPDF_List_ItemAt(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @HPDF_List_Insert(%struct.TYPE_13__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
