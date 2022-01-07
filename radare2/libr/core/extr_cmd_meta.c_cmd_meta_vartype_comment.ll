; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_meta.c_cmd_meta_vartype_comment.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_meta.c_cmd_meta_vartype_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@help_msg_Ct = common dso_local global i32 0, align 4
@R_META_TYPE_VARTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @cmd_meta_vartype_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_meta_vartype_comment(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %130 [
    i32 63, label %19
    i32 0, label %23
    i32 32, label %29
    i32 46, label %90
    i32 45, label %121
  ]

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = load i32, i32* @help_msg_Ct, align 4
  %22 = call i32 @r_core_cmd_help(%struct.TYPE_4__* %20, i32 %21)
  br label %134

23:                                               ; preds = %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @R_META_TYPE_VARTYPE, align 4
  %28 = call i32 @r_meta_list(i32 %26, i32 %27, i32 0)
  br label %134

29:                                               ; preds = %2
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = call i8* @r_str_trim_ro(i8* %31)
  store i8* %32, i8** %6, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @R_META_TYPE_VARTYPE, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @r_meta_get_string(i32 %35, i32 %36, i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @strdup(i8* %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @r_str_unescape(i8* %41)
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %79

45:                                               ; preds = %29
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 %47, %49
  %51 = add nsw i64 %50, 2
  %52 = trunc i64 %51 to i32
  %53 = call i8* @malloc(i32 %52)
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %45
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @strcpy(i8* %57, i8* %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @strcat(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @strcat(i8* %62, i8* %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @R_META_TYPE_VARTYPE, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @r_meta_set_string(i32 %67, i32 %68, i32 %69, i8* %70)
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @free(i8* %74)
  br label %78

76:                                               ; preds = %45
  %77 = call i32 @r_sys_perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %56
  br label %87

79:                                               ; preds = %29
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @R_META_TYPE_VARTYPE, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @r_meta_set_string(i32 %82, i32 %83, i32 %84, i8* %85)
  br label %87

87:                                               ; preds = %79, %78
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @free(i8* %88)
  br label %134

90:                                               ; preds = %2
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  %102 = call i32 @r_num_math(i32 %99, i8* %101)
  br label %105

103:                                              ; preds = %90
  %104 = load i32, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %96
  %106 = phi i32 [ %102, %96 ], [ %104, %103 ]
  store i32 %106, i32* %10, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @R_META_TYPE_VARTYPE, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i8* @r_meta_get_string(i32 %109, i32 %110, i32 %111)
  store i8* %112, i8** %11, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %105
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @r_cons_println(i8* %116)
  %118 = load i8*, i8** %11, align 8
  %119 = call i32 @free(i8* %118)
  br label %120

120:                                              ; preds = %115, %105
  br label %134

121:                                              ; preds = %2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @R_META_TYPE_VARTYPE, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @r_meta_del(i32 %124, i32 %125, i32 %128, i32 1)
  br label %134

130:                                              ; preds = %2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = load i32, i32* @help_msg_Ct, align 4
  %133 = call i32 @r_core_cmd_help(%struct.TYPE_4__* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %121, %120, %87, %23, %19
  ret i32 1
}

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @r_meta_list(i32, i32, i32) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i8* @r_meta_get_string(i32, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_str_unescape(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @r_meta_set_string(i32, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i32 @r_num_math(i32, i8*) #1

declare dso_local i32 @r_cons_println(i8*) #1

declare dso_local i32 @r_meta_del(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
