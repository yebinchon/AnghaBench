; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_sparc_cs.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_sparc_cs.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64*, i32 }

@CS_MODE_BIG_ENDIAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"v9\00", align 1
@CS_MODE_V9 = common dso_local global i32 0, align 4
@cd = common dso_local global i64 0, align 8
@CS_ARCH_SPARC = common dso_local global i32 0, align 4
@CS_OPT_DETAIL = common dso_local global i32 0, align 4
@CS_OPT_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %15 = load i32, i32* @CS_MODE_BIG_ENDIAN, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = call i32 @strcmp(i64* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @CS_MODE_V9, align 4
  %34 = load i32, i32* %13, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36, %20, %4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = icmp ne %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = call i32 @memset(%struct.TYPE_11__* %41, i32 0, i32 4)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i32 4, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i64, i64* @cd, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @cs_close(i64* @cd)
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* @CS_ARCH_SPARC, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @cs_open(i32 %51, i32 %52, i64* @cd)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %123

57:                                               ; preds = %50
  %58 = load i64, i64* @cd, align 8
  %59 = load i32, i32* @CS_OPT_DETAIL, align 4
  %60 = load i32, i32* @CS_OPT_OFF, align 4
  %61 = call i32 @cs_option(i64 %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = icmp ne %struct.TYPE_11__* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %125

65:                                               ; preds = %57
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i64, i64* @cd, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @cs_disasm(i64 %71, i32* %72, i32 %73, i32 %76, i32 1, %struct.TYPE_10__** %10)
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %70, %65
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = call i32 @r_asm_op_set_asm(%struct.TYPE_11__* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i32 4, i32* %85, align 4
  store i32 -1, i32* %12, align 4
  br label %122

86:                                               ; preds = %78
  store i32 4, i32* %12, align 4
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %122

93:                                               ; preds = %87
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = call i8* @sdb_fmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %101, i8* %109, i64* %112)
  store i8* %113, i8** %14, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 @r_str_replace_char(i8* %114, i8 signext 37, i32 0)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = call i32 @r_asm_op_set_asm(%struct.TYPE_11__* %116, i8* %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @cs_free(%struct.TYPE_10__* %119, i32 %120)
  br label %122

122:                                              ; preds = %93, %92, %81
  br label %123

123:                                              ; preds = %122, %56
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %64
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @strcmp(i64*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @cs_close(i64*) #1

declare dso_local i32 @cs_open(i32, i32, i64*) #1

declare dso_local i32 @cs_option(i64, i32, i32) #1

declare dso_local i32 @cs_disasm(i64, i32*, i32, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @r_asm_op_set_asm(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @sdb_fmt(i8*, i32, i8*, i64*) #1

declare dso_local i32 @r_str_replace_char(i8*, i8 signext, i32) #1

declare dso_local i32 @cs_free(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
