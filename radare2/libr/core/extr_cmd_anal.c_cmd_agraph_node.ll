; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_agraph_node.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_agraph_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"base64:\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Wrong arguments\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Cannot allocate buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@help_msg_agn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @cmd_agraph_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_agraph_node(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %112 [
    i32 32, label %16
    i32 45, label %90
    i32 63, label %111
  ]

16:                                               ; preds = %2
  store i8* null, i8** %5, align 8
  %17 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8** @r_str_argv(i8* %20, i32* %8)
  store i8** %21, i8*** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 3
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %16
  %28 = call i32 @r_cons_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8**, i8*** %6, align 8
  %30 = call i32 @r_str_argv_free(i8** %29)
  br label %116

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %74

34:                                               ; preds = %31
  %35 = load i8**, i8*** %6, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @strdup(i8* %37)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @strncmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %34
  %44 = load i8*, i8** %7, align 8
  %45 = call i8* @r_str_replace(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = ptrtoint i8* %49 to i32
  %51 = call i64 @r_base64_decode_dyn(i32 %50, i32 -1)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i8*, i8** %5, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %43
  %58 = call i32 @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i8**, i8*** %6, align 8
  %60 = call i32 @r_str_argv_free(i8** %59)
  br label %116

61:                                               ; preds = %43
  %62 = load i8*, i8** %5, align 8
  store i8* %62, i8** %7, align 8
  br label %63

63:                                               ; preds = %61, %34
  %64 = load i8*, i8** %7, align 8
  %65 = call i8* @r_str_append(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %65, i8** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 2
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i8**, i8*** %6, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @atoi(i8* %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %68, %63
  br label %76

74:                                               ; preds = %31
  %75 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i8* %75, i8** %7, align 8
  br label %76

76:                                               ; preds = %74, %73
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8**, i8*** %6, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @r_agraph_add_node_with_color(i32 %79, i8* %82, i8* %83, i32 %84)
  %86 = load i8**, i8*** %6, align 8
  %87 = call i32 @r_str_argv_free(i8** %86)
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @free(i8* %88)
  br label %116

90:                                               ; preds = %2
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %4, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = call i8** @r_str_argv(i8* %93, i32* %12)
  store i8** %94, i8*** %11, align 8
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = call i32 @r_cons_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i8**, i8*** %11, align 8
  %100 = call i32 @r_str_argv_free(i8** %99)
  br label %116

101:                                              ; preds = %90
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i8**, i8*** %11, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @r_agraph_del_node(i32 %104, i8* %107)
  %109 = load i8**, i8*** %11, align 8
  %110 = call i32 @r_str_argv_free(i8** %109)
  br label %116

111:                                              ; preds = %2
  br label %112

112:                                              ; preds = %2, %111
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = load i32, i32* @help_msg_agn, align 4
  %115 = call i32 @r_core_cmd_help(%struct.TYPE_4__* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %101, %97, %76, %57, %27
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8** @r_str_argv(i8*, i32*) #1

declare dso_local i32 @r_cons_printf(i8*) #1

declare dso_local i32 @r_str_argv_free(i8**) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @r_str_replace(i8*, i8*, i8*, i32) #1

declare dso_local i64 @r_base64_decode_dyn(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i8* @r_str_append(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @r_agraph_add_node_with_color(i32, i8*, i8*, i32) #1

declare dso_local i32 @r_agraph_del_node(i32, i8*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
