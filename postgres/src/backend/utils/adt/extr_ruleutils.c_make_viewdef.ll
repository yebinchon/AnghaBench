; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_make_viewdef.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_make_viewdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"ev_type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ev_class\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"is_instead\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ev_qual\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ev_action\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@CMD_SELECT = common dso_local global i64 0, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @make_viewdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_viewdef(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load i32*, i32** @NIL, align 8
  store i32* %22, i32** %17, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @SPI_fnumber(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %19, align 4
  %28 = call i32 @SPI_getbinval(i32 %25, i32 %26, i32 %27, i32* %21)
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* %21, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load i32, i32* %20, align 4
  %35 = call signext i8 @DatumGetChar(i32 %34)
  store i8 %35, i8* %12, align 1
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @SPI_fnumber(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %19, align 4
  %41 = call i32 @SPI_getbinval(i32 %38, i32 %39, i32 %40, i32* %21)
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %21, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = load i32, i32* %20, align 4
  %48 = call i32 @DatumGetObjectId(i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @SPI_fnumber(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %19, align 4
  %54 = call i32 @SPI_getbinval(i32 %51, i32 %52, i32 %53, i32* %21)
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %21, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @Assert(i32 %58)
  %60 = load i32, i32* %20, align 4
  %61 = call i32 @DatumGetBool(i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @SPI_fnumber(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %19, align 4
  %67 = call i8* @SPI_getvalue(i32 %64, i32 %65, i32 %66)
  store i8* %67, i8** %15, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @SPI_fnumber(i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %19, align 4
  %73 = call i8* @SPI_getvalue(i32 %70, i32 %71, i32 %72)
  store i8* %73, i8** %16, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %5
  %77 = load i8*, i8** %16, align 8
  %78 = call i64 @stringToNode(i8* %77)
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %17, align 8
  br label %80

80:                                               ; preds = %76, %5
  %81 = load i32*, i32** %17, align 8
  %82 = call i32 @list_length(i32* %81)
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %123

85:                                               ; preds = %80
  %86 = load i32*, i32** %17, align 8
  %87 = call i64 @linitial(i32* %86)
  %88 = inttoptr i64 %87 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %11, align 8
  %89 = load i8, i8* %12, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 49
  br i1 %91, label %105, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i8*, i8** %15, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CMD_SELECT, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99, %95, %92, %85
  br label %123

106:                                              ; preds = %99
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @AccessShareLock, align 4
  %109 = call i32 @table_open(i32 %107, i32 %108)
  store i32 %109, i32* %18, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32*, i32** @NIL, align 8
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @RelationGetDescr(i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @get_query_def(%struct.TYPE_3__* %110, i32 %111, i32* %112, i32 %114, i32 %115, i32 %116, i32 0)
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @appendStringInfoChar(i32 %118, i8 signext 59)
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* @AccessShareLock, align 4
  %122 = call i32 @table_close(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %106, %105, %84
  ret void
}

declare dso_local i32 @SPI_fnumber(i32, i8*) #1

declare dso_local i32 @SPI_getbinval(i32, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local signext i8 @DatumGetChar(i32) #1

declare dso_local i32 @DatumGetObjectId(i32) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i8* @SPI_getvalue(i32, i32, i32) #1

declare dso_local i64 @stringToNode(i8*) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @get_query_def(%struct.TYPE_3__*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
