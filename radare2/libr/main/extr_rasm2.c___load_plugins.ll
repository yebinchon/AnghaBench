; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rasm2.c___load_plugins.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rasm2.c___load_plugins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"RASM2_NOPLUGINS\00", align 1
@R_LIB_TYPE_ASM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"(dis)assembly plugins\00", align 1
@__lib_asm_cb = common dso_local global i32 0, align 4
@R_LIB_TYPE_ANAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"analysis/emulation plugins\00", align 1
@__lib_anal_cb = common dso_local global i32 0, align 4
@R_LIB_ENV = common dso_local global i8* null, align 8
@R2_HOME_PLUGINS = common dso_local global i32 0, align 4
@R2_PLUGINS = common dso_local global i32 0, align 4
@R2_EXTRAS = common dso_local global i32 0, align 4
@R2_BINDINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @__load_plugins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__load_plugins(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %9 = call i8* @r_sys_getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @free(i8* %13)
  br label %84

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @R_LIB_TYPE_ASM, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = call i32 @r_lib_add_handler(i32 %18, i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* @__lib_asm_cb, i32* null, %struct.TYPE_4__* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @R_LIB_TYPE_ANAL, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = call i32 @r_lib_add_handler(i32 %24, i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* @__lib_anal_cb, i32* null, %struct.TYPE_4__* %26)
  %28 = load i8*, i8** @R_LIB_ENV, align 8
  %29 = call i8* @r_sys_getenv(i8* %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %15
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @r_lib_opendir(i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %37, %32, %15
  %44 = load i32, i32* @R2_HOME_PLUGINS, align 4
  %45 = call i8* @r_str_home(i32 %44)
  store i8* %45, i8** %5, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @r_lib_opendir(i32 %48, i8* %49)
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i32, i32* @R2_PLUGINS, align 4
  %54 = call i8* @r_str_r2_prefix(i32 %53)
  store i8* %54, i8** %6, align 8
  %55 = load i32, i32* @R2_EXTRAS, align 4
  %56 = call i8* @r_str_r2_prefix(i32 %55)
  store i8* %56, i8** %7, align 8
  %57 = load i32, i32* @R2_BINDINGS, align 4
  %58 = call i8* @r_str_r2_prefix(i32 %57)
  store i8* %58, i8** %8, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @r_lib_opendir(i32 %61, i8* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @r_lib_opendir(i32 %66, i8* %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @r_lib_opendir(i32 %71, i8* %72)
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @free(i8* %82)
  br label %84

84:                                               ; preds = %43, %12
  ret void
}

declare dso_local i8* @r_sys_getenv(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_lib_add_handler(i32, i32, i8*, i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @r_lib_opendir(i32, i8*) #1

declare dso_local i8* @r_str_home(i32) #1

declare dso_local i8* @r_str_r2_prefix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
