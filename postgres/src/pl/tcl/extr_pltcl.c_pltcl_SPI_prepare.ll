; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_SPI_prepare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_SPI_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i8**, i8**, i32, i32*, i32* }

@CurrentMemoryContext = common dso_local global i32* null, align 8
@CurrentResourceOwner = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"query argtypes\00", align 1
@TCL_ERROR = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i64 0, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"PL/Tcl spi_prepare query\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@UTF_BEGIN = common dso_local global i32 0, align 4
@UTF_END = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"SPI_prepare() failed\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"SPI_keepplan() failed\00", align 1
@pltcl_current_call_state = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32**)* @pltcl_SPI_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pltcl_SPI_prepare(i32 %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store volatile i32* null, i32** %10, align 8
  %24 = load i32*, i32** @CurrentMemoryContext, align 8
  store volatile i32* %24, i32** %18, align 8
  %25 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 3
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32**, i32*** %9, align 8
  %31 = call i32 @Tcl_WrongNumArgs(i32* %29, i32 1, i32** %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @TCL_ERROR, align 4
  store i32 %32, i32* %5, align 4
  br label %172

33:                                               ; preds = %4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32**, i32*** %9, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @Tcl_ListObjGetElements(i32* %34, i32* %37, i32* %11, i32*** %12)
  %39 = load i64, i64* @TCL_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @TCL_ERROR, align 4
  store i32 %42, i32* %5, align 4
  br label %172

43:                                               ; preds = %33
  %44 = load i32, i32* @TopMemoryContext, align 4
  %45 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %46 = call i32* @AllocSetContextCreate(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store volatile i32* %46, i32** %10, align 8
  %47 = load volatile i32*, i32** %10, align 8
  %48 = call i32 @MemoryContextSwitchTo(i32* %47)
  %49 = call i64 @palloc0(i32 48)
  %50 = inttoptr i64 %49 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %13, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %55 = call i32 @snprintf(i32 %53, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_8__* %54)
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @palloc(i32 %62)
  %64 = inttoptr i64 %63 to i8**
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i8** %64, i8*** %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i64 @palloc(i32 %70)
  %72 = inttoptr i64 %71 to i32*
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 5
  store i32* %72, i32** %74, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 8
  %78 = trunc i64 %77 to i32
  %79 = call i64 @palloc(i32 %78)
  %80 = inttoptr i64 %79 to i8**
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i8** %80, i8*** %82, align 8
  %83 = load volatile i32*, i32** %18, align 8
  %84 = call i32 @MemoryContextSwitchTo(i32* %83)
  %85 = load volatile i32*, i32** %18, align 8
  %86 = load i32, i32* %19, align 4
  %87 = call i32 @pltcl_subtrans_begin(i32* %85, i32 %86)
  %88 = call i32 (...) @PG_TRY()
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %126, %43
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %129

93:                                               ; preds = %89
  %94 = load i32**, i32*** %12, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @Tcl_GetString(i32* %98)
  %100 = call i32 @parseTypeString(i32 %99, i8** %20, i32* %23, i32 0)
  %101 = load i8*, i8** %20, align 8
  %102 = call i32 @getTypeInputInfo(i8* %101, i8** %21, i8** %22)
  %103 = load i8*, i8** %20, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i8**, i8*** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  store i8* %103, i8** %109, align 8
  %110 = load i8*, i8** %21, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load volatile i32*, i32** %10, align 8
  %118 = call i32 @fmgr_info_cxt(i8* %110, i32* %116, i32* %117)
  %119 = load i8*, i8** %22, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i8**, i8*** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  store i8* %119, i8** %125, align 8
  br label %126

126:                                              ; preds = %93
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %89

129:                                              ; preds = %89
  %130 = load i32, i32* @UTF_BEGIN, align 4
  %131 = load i32**, i32*** %9, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 1
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @Tcl_GetString(i32* %133)
  %135 = call i32 @UTF_U2E(i32 %134)
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i8**, i8*** %138, align 8
  %140 = call i32* @SPI_prepare(i32 %135, i32 %136, i8** %139)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 4
  store i32* %140, i32** %142, align 8
  %143 = load i32, i32* @UTF_END, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %129
  %149 = load i32, i32* @ERROR, align 4
  %150 = call i32 @elog(i32 %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %129
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = call i64 @SPI_keepplan(i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i32, i32* @ERROR, align 4
  %159 = call i32 @elog(i32 %158, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %151
  %161 = load volatile i32*, i32** %18, align 8
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @pltcl_subtrans_commit(i32* %161, i32 %162)
  %164 = call i32 (...) @PG_CATCH()
  %165 = load i32*, i32** %7, align 8
  %166 = load volatile i32*, i32** %18, align 8
  %167 = load i32, i32* %19, align 4
  %168 = call i32 @pltcl_subtrans_abort(i32* %165, i32* %166, i32 %167)
  %169 = load volatile i32*, i32** %10, align 8
  %170 = call i32 @MemoryContextDelete(i32* %169)
  %171 = load i32, i32* @TCL_ERROR, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %160, %41, %28
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @Tcl_WrongNumArgs(i32*, i32, i32**, i8*) #1

declare dso_local i64 @Tcl_ListObjGetElements(i32*, i32*, i32*, i32***) #1

declare dso_local i32* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, %struct.TYPE_8__*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @pltcl_subtrans_begin(i32*, i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @parseTypeString(i32, i8**, i32*, i32) #1

declare dso_local i32 @Tcl_GetString(i32*) #1

declare dso_local i32 @getTypeInputInfo(i8*, i8**, i8**) #1

declare dso_local i32 @fmgr_info_cxt(i8*, i32*, i32*) #1

declare dso_local i32* @SPI_prepare(i32, i32, i8**) #1

declare dso_local i32 @UTF_U2E(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @SPI_keepplan(i32*) #1

declare dso_local i32 @pltcl_subtrans_commit(i32*, i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @pltcl_subtrans_abort(i32*, i32*, i32) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
