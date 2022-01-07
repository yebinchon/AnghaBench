; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_get_func_result_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_get_func_result_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@Anum_pg_proc_proargmodes = common dso_local global i32 0, align 4
@Anum_pg_proc_proargnames = common dso_local global i32 0, align 4
@CHAROID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"proargmodes is not a 1-D char array\00", align 1
@TEXTOID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"proargnames is not a 1-D text array\00", align 1
@PROARGMODE_IN = common dso_local global i8 0, align 1
@PROARGMODE_VARIADIC = common dso_local global i8 0, align 1
@PROARGMODE_OUT = common dso_local global i8 0, align 1
@PROARGMODE_INOUT = common dso_local global i8 0, align 1
@PROARGMODE_TABLE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_func_result_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* @PROCOID, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ObjectIdGetDatum(i32 %16)
  %18 = call i32 @SearchSysCache1(i32 %15, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @HeapTupleIsValid(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 (i32, i8*, ...) @elog(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @Anum_pg_proc_proargmodes, align 4
  %29 = call i64 @heap_attisnull(i32 %27, i32 %28, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @Anum_pg_proc_proargnames, align 4
  %34 = call i64 @heap_attisnull(i32 %32, i32 %33, i32* null)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %26
  store i8* null, i8** %3, align 8
  br label %201

37:                                               ; preds = %31
  %38 = load i32, i32* @PROCOID, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @Anum_pg_proc_proargmodes, align 4
  %41 = call i32 @SysCacheGetAttr(i32 %38, i32 %39, i32 %40, i32* %7)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = load i32, i32* @PROCOID, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @Anum_pg_proc_proargnames, align 4
  %50 = call i32 @SysCacheGetAttr(i32 %47, i32 %48, i32 %49, i32* %7)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32* @DatumGetArrayTypeP(i32 %56)
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32* @ARR_DIMS(i32* %58)
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @ARR_NDIM(i32* %62)
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %77, label %65

65:                                               ; preds = %37
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %8, align 8
  %70 = call i64 @ARR_HASNULL(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load i32*, i32** %8, align 8
  %74 = call i64 @ARR_ELEMTYPE(i32* %73)
  %75 = load i64, i64* @CHAROID, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72, %68, %65, %37
  %78 = load i32, i32* @ERROR, align 4
  %79 = call i32 (i32, i8*, ...) @elog(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32*, i32** %8, align 8
  %82 = call i64 @ARR_DATA_PTR(i32* %81)
  %83 = inttoptr i64 %82 to i8*
  store i8* %83, i8** %10, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32* @DatumGetArrayTypeP(i32 %84)
  store i32* %85, i32** %8, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @ARR_NDIM(i32* %86)
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %105, label %89

89:                                               ; preds = %80
  %90 = load i32*, i32** %8, align 8
  %91 = call i32* @ARR_DIMS(i32* %90)
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %105, label %96

96:                                               ; preds = %89
  %97 = load i32*, i32** %8, align 8
  %98 = call i64 @ARR_HASNULL(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = load i32*, i32** %8, align 8
  %102 = call i64 @ARR_ELEMTYPE(i32* %101)
  %103 = load i64, i64* @TEXTOID, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100, %96, %89, %80
  %106 = load i32, i32* @ERROR, align 4
  %107 = call i32 (i32, i8*, ...) @elog(i32 %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i32*, i32** %8, align 8
  %110 = load i64, i64* @TEXTOID, align 8
  %111 = call i32 @deconstruct_array(i32* %109, i64 %110, i32 -1, i32 0, i8 signext 105, i32** %11, i32* null, i32* %13)
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @Assert(i32 %115)
  store i8* null, i8** %3, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %197, %108
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %200

121:                                              ; preds = %117
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8, i8* @PROARGMODE_IN, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %141, label %131

131:                                              ; preds = %121
  %132 = load i8*, i8** %10, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = load i8, i8* @PROARGMODE_VARIADIC, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %131, %121
  br label %197

142:                                              ; preds = %131
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = load i8, i8* @PROARGMODE_OUT, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %172, label %152

152:                                              ; preds = %142
  %153 = load i8*, i8** %10, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = load i8, i8* @PROARGMODE_INOUT, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %172, label %162

162:                                              ; preds = %152
  %163 = load i8*, i8** %10, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = load i8, i8* @PROARGMODE_TABLE, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %168, %170
  br label %172

172:                                              ; preds = %162, %152, %142
  %173 = phi i1 [ true, %152 ], [ true, %142 ], [ %171, %162 ]
  %174 = zext i1 %173 to i32
  %175 = call i32 @Assert(i32 %174)
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  %178 = icmp sgt i32 %177, 1
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  store i8* null, i8** %3, align 8
  br label %200

180:                                              ; preds = %172
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @TextDatumGetCString(i32 %185)
  store i8* %186, i8** %3, align 8
  %187 = load i8*, i8** %3, align 8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %195, label %189

189:                                              ; preds = %180
  %190 = load i8*, i8** %3, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189, %180
  store i8* null, i8** %3, align 8
  br label %200

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196, %141
  %198 = load i32, i32* %14, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %14, align 4
  br label %117

200:                                              ; preds = %195, %179, %117
  br label %201

201:                                              ; preds = %200, %36
  %202 = load i32, i32* %4, align 4
  %203 = call i32 @ReleaseSysCache(i32 %202)
  %204 = load i8*, i8** %3, align 8
  ret i8* %204
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @heap_attisnull(i32, i32, i32*) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

declare dso_local i32 @deconstruct_array(i32*, i64, i32, i32, i8 signext, i32**, i32*, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
