; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_as.c_assemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_as.c_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"r_as\00", align 1
@R_ASM_SYNTAX_INTEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c".intel_syntax noprefix\0A\00", align 1
@R_ASM_SYNTAX_ATT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c".att_syntax\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"%s.code%i\0A.ascii \22BEGINMARK\22\0A%s\0A.ascii \22ENDMARK\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"as %s -o %s\00", align 1
@O_BINARY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"BEGINMARK\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ENDMARK\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Cannot find water marks\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Error running: as %s -o %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i8*)* @assemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assemble(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [512 x i32], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = call i32 @r_file_mkstemp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %137

22:                                               ; preds = %3
  %23 = call i32 @r_file_mkstemp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @close(i32 %29)
  store i32 -1, i32* %4, align 4
  br label %137

31:                                               ; preds = %22
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @R_ASM_SYNTAX_INTEL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @R_ASM_SYNTAX_ATT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* @r_str_newf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %46, i32 %49, i8* %50)
  store i8* %51, i8** %14, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i8*, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = call i32 @write(i32 %52, i8* %53, i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @close(i32 %57)
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @r_sys_cmdf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %61, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %118, label %65

65:                                               ; preds = %45
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @close(i32 %66)
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* @O_BINARY, align 4
  %70 = load i32, i32* @O_RDONLY, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @r_sandbox_open(i8* %68, i32 %71, i32 420)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @free(i8* %78)
  store i32 -1, i32* %4, align 4
  br label %137

80:                                               ; preds = %65
  %81 = bitcast [512 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %81, i8 0, i64 2048, i1 false)
  %82 = load i32, i32* %13, align 4
  %83 = getelementptr inbounds [512 x i32], [512 x i32]* %17, i64 0, i64 0
  %84 = call i32 @read(i32 %82, i32* %83, i32 2048)
  store i32 %84, i32* %11, align 4
  %85 = getelementptr inbounds [512 x i32], [512 x i32]* %17, i64 0, i64 0
  %86 = load i32, i32* %11, align 4
  %87 = call i32* @r_mem_mem(i32* %85, i32 %86, i32* bitcast ([10 x i8]* @.str.6 to i32*), i32 9)
  store i32* %87, i32** %15, align 8
  %88 = getelementptr inbounds [512 x i32], [512 x i32]* %17, i64 0, i64 0
  %89 = load i32, i32* %11, align 4
  %90 = call i32* @r_mem_mem(i32* %88, i32 %89, i32* bitcast ([8 x i8]* @.str.7 to i32*), i32 7)
  store i32* %90, i32** %16, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = load i32*, i32** %16, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93, %80
  %97 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %117

98:                                               ; preds = %93
  %99 = load i32*, i32** %16, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = ptrtoint i32* %99 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = sub nsw i64 %104, 9
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 9
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @r_asm_op_set_buf(%struct.TYPE_6__* %110, i32* %112, i32 %113)
  br label %116

115:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %109
  br label %117

117:                                              ; preds = %116, %96
  br label %122

118:                                              ; preds = %45
  %119 = load i8*, i8** %8, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %119, i8* %120)
  store i32 0, i32* %11, align 4
  br label %122

122:                                              ; preds = %118, %117
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @close(i32 %123)
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @unlink(i8* %125)
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @unlink(i8* %127)
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %122, %75, %26, %21
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @r_file_mkstemp(i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_sys_cmdf(i8*, i8*, i8*) #1

declare dso_local i32 @r_sandbox_open(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32* @r_mem_mem(i32*, i32, i32*, i32) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_asm_op_set_buf(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
