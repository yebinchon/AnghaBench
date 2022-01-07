; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_radare2.c_main_print_var.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_radare2.c_main_print_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radare2_var_t = type { i8*, i8* }

@R2_INCDIR = common dso_local global i32 0, align 4
@R2_LIBDIR = common dso_local global i32 0, align 4
@R2_HOME_CONFIGDIR = common dso_local global i32 0, align 4
@R2_HOME_DATADIR = common dso_local global i32 0, align 4
@R2_HOME_CACHEDIR = common dso_local global i32 0, align 4
@R2_HOME_PLUGINS = common dso_local global i32 0, align 4
@R2_HOME_ZIGNS = common dso_local global i32 0, align 4
@R2_PLUGINS = common dso_local global i32 0, align 4
@R2_SDB_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"R2_PREFIX\00", align 1
@R2_PREFIX = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"R2_MAGICPATH\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"R2_INCDIR\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"R2_LIBDIR\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"R2_LIBEXT\00", align 1
@R_LIB_EXT = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"R2_RCONFIGHOME\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"R2_RDATAHOME\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"R2_RCACHEHOME\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"R2_LIBR_PLUGINS\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"R2_USER_PLUGINS\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"R2_USER_ZIGNS\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"R2_\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @main_print_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @main_print_var(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [13 x %struct.radare2_var_t], align 16
  %14 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %15 = load i32, i32* @R2_INCDIR, align 4
  %16 = call i8* @strdup(i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i32, i32* @R2_LIBDIR, align 4
  %18 = call i8* @strdup(i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i32, i32* @R2_HOME_CONFIGDIR, align 4
  %20 = call i8* @r_str_home(i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i32, i32* @R2_HOME_DATADIR, align 4
  %22 = call i8* @r_str_home(i32 %21)
  store i8* %22, i8** %7, align 8
  %23 = load i32, i32* @R2_HOME_CACHEDIR, align 4
  %24 = call i8* @r_str_home(i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i32, i32* @R2_HOME_PLUGINS, align 4
  %26 = call i8* @r_str_home(i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i32, i32* @R2_HOME_ZIGNS, align 4
  %28 = call i8* @r_str_home(i32 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i32, i32* @R2_PLUGINS, align 4
  %30 = call i8* @r_str_r2_prefix(i32 %29)
  store i8* %30, i8** %11, align 8
  %31 = load i32, i32* @R2_SDB_MAGIC, align 4
  %32 = call i8* @r_str_r2_prefix(i32 %31)
  store i8* %32, i8** %12, align 8
  %33 = getelementptr inbounds [13 x %struct.radare2_var_t], [13 x %struct.radare2_var_t]* %13, i64 0, i64 0
  %34 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %34, align 16
  %35 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %33, i32 0, i32 1
  %36 = load i8*, i8** @R2_PREFIX, align 8
  store i8* %36, i8** %35, align 8
  %37 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %33, i64 1
  %38 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 16
  %39 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %37, i32 0, i32 1
  %40 = load i8*, i8** %12, align 8
  store i8* %40, i8** %39, align 8
  %41 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %37, i64 1
  %42 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %42, align 16
  %43 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %41, i32 0, i32 1
  %44 = load i8*, i8** @R2_PREFIX, align 8
  store i8* %44, i8** %43, align 8
  %45 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %41, i64 1
  %46 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %46, align 16
  %47 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %45, i32 0, i32 1
  %48 = load i8*, i8** %4, align 8
  store i8* %48, i8** %47, align 8
  %49 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %45, i64 1
  %50 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %50, align 16
  %51 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %49, i32 0, i32 1
  %52 = load i8*, i8** %5, align 8
  store i8* %52, i8** %51, align 8
  %53 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %49, i64 1
  %54 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %54, align 16
  %55 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %53, i32 0, i32 1
  %56 = load i8*, i8** @R_LIB_EXT, align 8
  store i8* %56, i8** %55, align 8
  %57 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %53, i64 1
  %58 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %58, align 16
  %59 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %57, i32 0, i32 1
  %60 = load i8*, i8** %6, align 8
  store i8* %60, i8** %59, align 8
  %61 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %57, i64 1
  %62 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %62, align 16
  %63 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %61, i32 0, i32 1
  %64 = load i8*, i8** %7, align 8
  store i8* %64, i8** %63, align 8
  %65 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %61, i64 1
  %66 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %66, align 16
  %67 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %65, i32 0, i32 1
  %68 = load i8*, i8** %8, align 8
  store i8* %68, i8** %67, align 8
  %69 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %65, i64 1
  %70 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8** %70, align 16
  %71 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %69, i32 0, i32 1
  %72 = load i8*, i8** %11, align 8
  store i8* %72, i8** %71, align 8
  %73 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %69, i64 1
  %74 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8** %74, align 16
  %75 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %73, i32 0, i32 1
  %76 = load i8*, i8** %9, align 8
  store i8* %76, i8** %75, align 8
  %77 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %73, i64 1
  %78 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %77, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %78, align 16
  %79 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %77, i32 0, i32 1
  %80 = load i8*, i8** %10, align 8
  store i8* %80, i8** %79, align 8
  %81 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %77, i64 1
  %82 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %81, i32 0, i32 0
  store i8* null, i8** %82, align 16
  %83 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %81, i32 0, i32 1
  store i8* null, i8** %83, align 8
  store i32 0, i32* %14, align 4
  %84 = load i8*, i8** %2, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %1
  %87 = load i8*, i8** %2, align 8
  %88 = call i64 @strncmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 3, i32* %14, align 4
  br label %91

91:                                               ; preds = %90, %86, %1
  %92 = load i8*, i8** %2, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %125

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %121, %94
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [13 x %struct.radare2_var_t], [13 x %struct.radare2_var_t]* %13, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 16
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %124

102:                                              ; preds = %95
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [13 x %struct.radare2_var_t], [13 x %struct.radare2_var_t]* %13, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 16
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8*, i8** %2, align 8
  %112 = call i32 @strcmp(i8* %110, i8* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %102
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [13 x %struct.radare2_var_t], [13 x %struct.radare2_var_t]* %13, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %119)
  br label %124

121:                                              ; preds = %102
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %95

124:                                              ; preds = %114, %95
  br label %148

125:                                              ; preds = %91
  br label %126

126:                                              ; preds = %133, %125
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [13 x %struct.radare2_var_t], [13 x %struct.radare2_var_t]* %13, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 16
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %147

133:                                              ; preds = %126
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [13 x %struct.radare2_var_t], [13 x %struct.radare2_var_t]* %13, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 16
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [13 x %struct.radare2_var_t], [13 x %struct.radare2_var_t]* %13, i64 0, i64 %140
  %142 = getelementptr inbounds %struct.radare2_var_t, %struct.radare2_var_t* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %138, i8* %143)
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %126

147:                                              ; preds = %126
  br label %148

148:                                              ; preds = %147, %124
  %149 = load i8*, i8** %4, align 8
  %150 = call i32 @free(i8* %149)
  %151 = load i8*, i8** %5, align 8
  %152 = call i32 @free(i8* %151)
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @free(i8* %153)
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @free(i8* %155)
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @free(i8* %157)
  %159 = load i8*, i8** %9, align 8
  %160 = call i32 @free(i8* %159)
  %161 = load i8*, i8** %10, align 8
  %162 = call i32 @free(i8* %161)
  %163 = load i8*, i8** %11, align 8
  %164 = call i32 @free(i8* %163)
  %165 = load i8*, i8** %12, align 8
  %166 = call i32 @free(i8* %165)
  ret i32 0
}

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @r_str_home(i32) #1

declare dso_local i8* @r_str_r2_prefix(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
