; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_hash.c_cmd_hash_bang.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_hash.c_cmd_hash_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"hashbang disabled in sandbox mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Error: scr.interactive required to run the rlang prompt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @cmd_hash_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_hash_bang(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = call i64 @r_sandbox_enable(i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @eprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %130

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i8** @r_str_argv(i8* %17, i32* %6)
  store i8** %18, i8*** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %122

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32* @r_lang_get_by_extension(%struct.TYPE_10__* %24, i8* %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %99

31:                                               ; preds = %21
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32* %32, i32** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %87

39:                                               ; preds = %31
  %40 = load i8**, i8*** %7, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = call i8* @strstr(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8* %49, i8** %9, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @r_lang_run_string(%struct.TYPE_10__* %52, i8* %53)
  br label %86

55:                                               ; preds = %39
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i8**, i8*** %7, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = call i64 @r_lang_set_argv(%struct.TYPE_10__* %58, i32 %60, i8** %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i8**, i8*** %7, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @r_lang_run_file(%struct.TYPE_10__* %68, i8* %71)
  br label %85

73:                                               ; preds = %55
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8**, i8*** %7, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @strstr(i8* %75, i8* %78)
  store i8* %79, i8** %10, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @r_lang_run_file(%struct.TYPE_10__* %82, i8* %83)
  br label %85

85:                                               ; preds = %73, %65
  br label %86

86:                                               ; preds = %85, %45
  br label %98

87:                                               ; preds = %31
  %88 = call i64 (...) @r_cons_is_interactive()
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = call i32 @r_lang_prompt(%struct.TYPE_10__* %93)
  br label %97

95:                                               ; preds = %87
  %96 = call i32 @eprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  br label %98

98:                                               ; preds = %97, %86
  br label %121

99:                                               ; preds = %21
  %100 = load i8**, i8*** %7, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 63
  br i1 %106, label %115, label %107

107:                                              ; preds = %99
  %108 = load i8**, i8*** %7, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 42
  br i1 %114, label %115, label %120

115:                                              ; preds = %107, %99
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = call i32 @r_lang_list(%struct.TYPE_10__* %118)
  br label %120

120:                                              ; preds = %115, %107
  br label %121

121:                                              ; preds = %120, %98
  br label %127

122:                                              ; preds = %15
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = call i32 @r_lang_list(%struct.TYPE_10__* %125)
  br label %127

127:                                              ; preds = %122, %121
  %128 = load i8**, i8*** %7, align 8
  %129 = call i32 @r_str_argv_free(i8** %128)
  store i32 1, i32* %3, align 4
  br label %130

130:                                              ; preds = %127, %13
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @r_sandbox_enable(i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i8** @r_str_argv(i8*, i32*) #1

declare dso_local i32* @r_lang_get_by_extension(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @r_lang_run_string(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @r_lang_set_argv(%struct.TYPE_10__*, i32, i8**) #1

declare dso_local i32 @r_lang_run_file(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @r_cons_is_interactive(...) #1

declare dso_local i32 @r_lang_prompt(%struct.TYPE_10__*) #1

declare dso_local i32 @r_lang_list(%struct.TYPE_10__*) #1

declare dso_local i32 @r_str_argv_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
