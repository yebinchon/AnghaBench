; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_get_func_arg_info.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_get_func_arg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@PROCOID = common dso_local global i32 0, align 4
@Anum_pg_proc_proallargtypes = common dso_local global i32 0, align 4
@OIDOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"proallargtypes is not a 1-D Oid array\00", align 1
@Anum_pg_proc_proargnames = common dso_local global i32 0, align 4
@TEXTOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"proargnames must have the same number of elements as the function has arguments\00", align 1
@Anum_pg_proc_proargmodes = common dso_local global i32 0, align 4
@CHAROID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"proargmodes is not a 1-D char array\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_func_arg_info(i32 %0, i8** %1, i8*** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store i8** %3, i8*** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @GETSTRUCT(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %9, align 8
  %23 = load i32, i32* @PROCOID, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @Anum_pg_proc_proallargtypes, align 4
  %26 = call i32 @SysCacheGetAttr(i32 %23, i32 %24, i32 %25, i32* %13)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %78, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  %31 = call i32* @DatumGetArrayTypeP(i32 %30)
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i32* @ARR_DIMS(i32* %32)
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @ARR_NDIM(i32* %36)
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %51, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %14, align 8
  %44 = call i64 @ARR_HASNULL(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %14, align 8
  %48 = call i64 @ARR_ELEMTYPE(i32* %47)
  %49 = load i64, i64* @OIDOID, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %42, %39, %29
  %52 = load i32, i32* @ERROR, align 4
  %53 = call i32 @elog(i32 %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @Assert(i32 %60)
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = call i64 @palloc(i32 %65)
  %67 = inttoptr i64 %66 to i8*
  %68 = load i8**, i8*** %6, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i8**, i8*** %6, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @ARR_DATA_PTR(i32* %71)
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 1
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memcpy(i8* %70, i32 %72, i32 %76)
  br label %108

78:                                               ; preds = %4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %83, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @Assert(i32 %88)
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 1
  %93 = trunc i64 %92 to i32
  %94 = call i64 @palloc(i32 %93)
  %95 = inttoptr i64 %94 to i8*
  %96 = load i8**, i8*** %6, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i8**, i8*** %6, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 1
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memcpy(i8* %98, i32 %102, i32 %106)
  br label %108

108:                                              ; preds = %78, %54
  %109 = load i32, i32* @PROCOID, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @Anum_pg_proc_proargnames, align 4
  %112 = call i32 @SysCacheGetAttr(i32 %109, i32 %110, i32 %111, i32* %13)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i8***, i8**** %7, align 8
  store i8** null, i8*** %116, align 8
  br label %156

117:                                              ; preds = %108
  %118 = load i32, i32* %12, align 4
  %119 = call i32* @DatumGetArrayTypeP(i32 %118)
  %120 = load i32, i32* @TEXTOID, align 4
  %121 = call i32 @deconstruct_array(i32* %119, i32 %120, i32 -1, i32 0, i8 signext 105, i32** %16, i32* null, i32* %17)
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* @ERROR, align 4
  %127 = call i32 @elog(i32 %126, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %117
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 8, %130
  %132 = trunc i64 %131 to i32
  %133 = call i64 @palloc(i32 %132)
  %134 = inttoptr i64 %133 to i8**
  %135 = load i8***, i8**** %7, align 8
  store i8** %134, i8*** %135, align 8
  store i32 0, i32* %18, align 4
  br label %136

136:                                              ; preds = %152, %128
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %136
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @TextDatumGetCString(i32 %145)
  %147 = load i8***, i8**** %7, align 8
  %148 = load i8**, i8*** %147, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  store i8* %146, i8** %151, align 8
  br label %152

152:                                              ; preds = %140
  %153 = load i32, i32* %18, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %18, align 4
  br label %136

155:                                              ; preds = %136
  br label %156

156:                                              ; preds = %155, %115
  %157 = load i32, i32* @PROCOID, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @Anum_pg_proc_proargmodes, align 4
  %160 = call i32 @SysCacheGetAttr(i32 %157, i32 %158, i32 %159, i32* %13)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = load i8**, i8*** %8, align 8
  store i8* null, i8** %164, align 8
  br label %207

165:                                              ; preds = %156
  %166 = load i32, i32* %11, align 4
  %167 = call i32* @DatumGetArrayTypeP(i32 %166)
  store i32* %167, i32** %14, align 8
  %168 = load i32*, i32** %14, align 8
  %169 = call i32 @ARR_NDIM(i32* %168)
  %170 = icmp ne i32 %169, 1
  br i1 %170, label %187, label %171

171:                                              ; preds = %165
  %172 = load i32*, i32** %14, align 8
  %173 = call i32* @ARR_DIMS(i32* %172)
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %187, label %178

178:                                              ; preds = %171
  %179 = load i32*, i32** %14, align 8
  %180 = call i64 @ARR_HASNULL(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %178
  %183 = load i32*, i32** %14, align 8
  %184 = call i64 @ARR_ELEMTYPE(i32* %183)
  %185 = load i64, i64* @CHAROID, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %182, %178, %171, %165
  %188 = load i32, i32* @ERROR, align 4
  %189 = call i32 @elog(i32 %188, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %182
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 1
  %194 = trunc i64 %193 to i32
  %195 = call i64 @palloc(i32 %194)
  %196 = inttoptr i64 %195 to i8*
  %197 = load i8**, i8*** %8, align 8
  store i8* %196, i8** %197, align 8
  %198 = load i8**, i8*** %8, align 8
  %199 = load i8*, i8** %198, align 8
  %200 = load i32*, i32** %14, align 8
  %201 = call i32 @ARR_DATA_PTR(i32* %200)
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = mul i64 %203, 1
  %205 = trunc i64 %204 to i32
  %206 = call i32 @memcpy(i8* %199, i32 %201, i32 %205)
  br label %207

207:                                              ; preds = %190, %163
  %208 = load i32, i32* %15, align 4
  ret i32 %208
}

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ARR_DATA_PTR(i32*) #1

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, i32**, i32*, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
