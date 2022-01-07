; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xcore_cs.c_analop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xcore_cs.c_analop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i8*, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@analop.handle = internal global i64 0, align 8
@analop.omode = internal global i32 0, align 4
@CS_MODE_BIG_ENDIAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"v9\00", align 1
@CS_MODE_V9 = common dso_local global i32 0, align 4
@CS_ARCH_XCORE = common dso_local global i32 0, align 4
@CS_ERR_OK = common dso_local global i32 0, align 4
@CS_OPT_DETAIL = common dso_local global i32 0, align 4
@CS_OPT_ON = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_NULL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ILL = common dso_local global i8* null, align 8
@R_ANAL_OP_MASK_OPEX = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SUB = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_ADD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32*, i32, i32)* @analop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analop(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__, align 4
  %19 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* @CS_MODE_BIG_ENDIAN, align 4
  store i32 %20, i32* %15, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcmp(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @CS_MODE_V9, align 4
  %28 = load i32, i32* %15, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %15, align 4
  br label %30

30:                                               ; preds = %26, %6
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @analop.omode, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i64, i64* @analop.handle, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @cs_close(i64* @analop.handle)
  store i64 0, i64* @analop.handle, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* @analop.omode, align 4
  br label %41

41:                                               ; preds = %39, %30
  %42 = load i64, i64* @analop.handle, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load i32, i32* @CS_ARCH_XCORE, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @cs_open(i32 %45, i32 %46, i64* @analop.handle)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* @CS_ERR_OK, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 -1, i32* %7, align 4
  br label %144

52:                                               ; preds = %44
  %53 = load i64, i64* @analop.handle, align 8
  %54 = load i32, i32* @CS_OPT_DETAIL, align 4
  %55 = load i32, i32* @CS_OPT_ON, align 4
  %56 = call i32 @cs_option(i64 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %41
  %58 = load i8*, i8** @R_ANAL_OP_TYPE_NULL, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 6
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 5
  %67 = call i32 @r_strbuf_init(i32* %66)
  %68 = load i64, i64* @analop.handle, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @cs_disasm(i64 %68, i32* %69, i32 %70, i32 %71, i32 1, %struct.TYPE_10__** %14)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %57
  %76 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %140

79:                                               ; preds = %57
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @R_ANAL_OP_MASK_OPEX, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 4
  %87 = load i64, i64* @analop.handle, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %89 = call i32 @opex(i32* %86, i64 %87, %struct.TYPE_10__* %88)
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %136 [
    i32 136, label %104
    i32 132, label %104
    i32 129, label %104
    i32 137, label %108
    i32 133, label %108
    i32 135, label %108
    i32 134, label %108
    i32 143, label %118
    i32 142, label %118
    i32 141, label %118
    i32 139, label %118
    i32 144, label %118
    i32 138, label %118
    i32 140, label %118
    i32 128, label %128
    i32 130, label %128
    i32 145, label %132
    i32 131, label %132
  ]

104:                                              ; preds = %90, %90, %90
  %105 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  br label %136

108:                                              ; preds = %90, %90, %90, %90
  %109 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = call i32 @INSOP(i32 0)
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i32 %112, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  br label %136

118:                                              ; preds = %90, %90, %90, %90, %90, %90, %90
  %119 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = call i32 @INSOP(i32 0)
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  br label %136

128:                                              ; preds = %90, %90
  %129 = load i8*, i8** @R_ANAL_OP_TYPE_SUB, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  br label %136

132:                                              ; preds = %90, %90
  %133 = load i8*, i8** @R_ANAL_OP_TYPE_ADD, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %90, %132, %128, %118, %108, %104
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @cs_free(%struct.TYPE_10__* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %75
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %140, %51
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @cs_close(i64*) #1

declare dso_local i32 @cs_open(i32, i32, i64*) #1

declare dso_local i32 @cs_option(i64, i32, i32) #1

declare dso_local i32 @r_strbuf_init(i32*) #1

declare dso_local i32 @cs_disasm(i64, i32*, i32, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @opex(i32*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @INSOP(i32) #1

declare dso_local i32 @cs_free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
