; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_fmgr_info_cxt_security.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_fmgr_info_cxt_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i32, i32, i32, i32, i32*, i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32 }

@InvalidOid = common dso_local global i8* null, align 8
@TRACK_FUNC_ALL = common dso_local global i8* null, align 8
@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@Anum_pg_proc_proconfig = common dso_local global i32 0, align 4
@fmgr_security_definer = common dso_local global i32 0, align 4
@Anum_pg_proc_prosrc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"null prosrc\00", align 1
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"internal function \22%s\22 is not in internal lookup table\00", align 1
@TRACK_FUNC_PL = common dso_local global i8* null, align 8
@fmgr_sql = common dso_local global i32 0, align 4
@TRACK_FUNC_OFF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_10__*, i32, i32)* @fmgr_info_cxt_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmgr_info_cxt_security(i8* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** @InvalidOid, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 8
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 6
  store i32* null, i32** %24, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call %struct.TYPE_11__* @fmgr_isbuiltin(i8* %25)
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %9, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** @TRACK_FUNC_ALL, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %182

55:                                               ; preds = %4
  %56 = load i32, i32* @PROCOID, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @ObjectIdGetDatum(i8* %57)
  %59 = call i32 @SearchSysCache1(i32 %56, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @HeapTupleIsValid(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @ERROR, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 (i32, i8*, ...) @elog(i32 %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %63, %55
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @GETSTRUCT(i32 %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %11, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %114, label %88

88:                                               ; preds = %67
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @Anum_pg_proc_proconfig, align 4
  %96 = call i32 @heap_attisnull(i32 %94, i32 %95, i32* null)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i8*, i8** %5, align 8
  %100 = call i64 @FmgrHookIsNeeded(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %98, %93, %88
  %103 = load i32, i32* @fmgr_security_definer, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load i8*, i8** @TRACK_FUNC_ALL, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @ReleaseSysCache(i32 %112)
  br label %182

114:                                              ; preds = %98, %67
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %168 [
    i32 129, label %118
    i32 130, label %153
    i32 128, label %161
  ]

118:                                              ; preds = %114
  %119 = load i32, i32* @PROCOID, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @Anum_pg_proc_prosrc, align 4
  %122 = call i32 @SysCacheGetAttr(i32 %119, i32 %120, i32 %121, i32* %13)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i32, i32* @ERROR, align 4
  %127 = call i32 (i32, i8*, ...) @elog(i32 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %118
  %129 = load i32, i32* %12, align 4
  %130 = call i8* @TextDatumGetCString(i32 %129)
  store i8* %130, i8** %14, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = call %struct.TYPE_11__* @fmgr_lookupByName(i8* %131)
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %9, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %134 = icmp eq %struct.TYPE_11__* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load i32, i32* @ERROR, align 4
  %137 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %138 = call i32 @errcode(i32 %137)
  %139 = load i8*, i8** %14, align 8
  %140 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %139)
  %141 = call i32 @ereport(i32 %136, i32 %140)
  br label %142

142:                                              ; preds = %135, %128
  %143 = load i8*, i8** %14, align 8
  %144 = call i32 @pfree(i8* %143)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load i8*, i8** @TRACK_FUNC_ALL, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  br label %176

153:                                              ; preds = %114
  %154 = load i8*, i8** %5, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @fmgr_info_C_lang(i8* %154, %struct.TYPE_10__* %155, i32 %156)
  %158 = load i8*, i8** @TRACK_FUNC_PL, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  br label %176

161:                                              ; preds = %114
  %162 = load i32, i32* @fmgr_sql, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load i8*, i8** @TRACK_FUNC_PL, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  br label %176

168:                                              ; preds = %114
  %169 = load i8*, i8** %5, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @fmgr_info_other_lang(i8* %169, %struct.TYPE_10__* %170, i32 %171)
  %173 = load i8*, i8** @TRACK_FUNC_OFF, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %168, %161, %153, %142
  %177 = load i8*, i8** %5, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @ReleaseSysCache(i32 %180)
  br label %182

182:                                              ; preds = %176, %102, %28
  ret void
}

declare dso_local %struct.TYPE_11__* @fmgr_isbuiltin(i8*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @heap_attisnull(i32, i32, i32*) #1

declare dso_local i64 @FmgrHookIsNeeded(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local %struct.TYPE_11__* @fmgr_lookupByName(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @fmgr_info_C_lang(i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @fmgr_info_other_lang(i8*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
