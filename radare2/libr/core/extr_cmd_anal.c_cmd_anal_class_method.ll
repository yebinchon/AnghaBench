; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_anal_class_method.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_anal_class_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i32, i64 }

@R_ANAL_CLASS_ERR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No class name given.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"No method name given.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"No offset given.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"No new method name given.\0A\00", align 1
@help_msg_ac = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Class does not exist.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Method does not exist.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @cmd_anal_class_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_anal_class_method(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i32, i32* @R_ANAL_CLASS_ERR_SUCCESS, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %6, align 1
  %18 = load i8, i8* %6, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %155 [
    i32 32, label %20
    i32 45, label %20
    i32 110, label %20
  ]

20:                                               ; preds = %2, %2, %2
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i8* @r_str_trim_ro(i8* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = call i32 @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %159

29:                                               ; preds = %20
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @strdup(i8* %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %159

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 32)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = call i32 @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @free(i8* %42)
  br label %159

44:                                               ; preds = %35
  %45 = load i8*, i8** %9, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %10, align 8
  %48 = load i8, i8* %6, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load i8, i8* %6, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 110
  br i1 %54, label %55, label %78

55:                                               ; preds = %51, %44
  %56 = load i8*, i8** %10, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 32)
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %76, label %60

60:                                               ; preds = %55
  %61 = load i8, i8* %6, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 32
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %73

66:                                               ; preds = %60
  %67 = load i8, i8* %6, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 110
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %64
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @free(i8* %74)
  br label %159

76:                                               ; preds = %55
  %77 = load i8*, i8** %9, align 8
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %76, %51
  %79 = load i8, i8* %6, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %82, label %118

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %11, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call i8* @strchr(i8* %85, i8 signext 32)
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i8*, i8** %9, align 8
  store i8 0, i8* %90, align 1
  br label %91

91:                                               ; preds = %89, %82
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %11, align 8
  %98 = call i64 @r_num_get(i32 %96, i8* %97)
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i64 %98, i64* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 -1, i32* %100, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %91
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = call i64 @r_num_get(i32 %106, i8* %108)
  %110 = trunc i64 %109 to i32
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %110, i32* %111, align 8
  br label %112

112:                                              ; preds = %103, %91
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @r_anal_class_method_set(i32 %115, i8* %116, %struct.TYPE_7__* %12)
  store i32 %117, i32* %5, align 4
  br label %152

118:                                              ; preds = %78
  %119 = load i8, i8* %6, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 110
  br i1 %121, label %122, label %139

122:                                              ; preds = %118
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8* %124, i8** %13, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = call i8* @strchr(i8* %125, i8 signext 32)
  store i8* %126, i8** %9, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i8*, i8** %9, align 8
  store i8 0, i8* %130, align 1
  br label %131

131:                                              ; preds = %129, %122
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = call i32 @r_anal_class_method_rename(i32 %134, i8* %135, i8* %136, i8* %137)
  store i32 %138, i32* %5, align 4
  br label %151

139:                                              ; preds = %118
  %140 = load i8, i8* %6, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 45
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %8, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = call i32 @r_anal_class_method_delete(i32 %146, i8* %147, i8* %148)
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %143, %139
  br label %151

151:                                              ; preds = %150, %131
  br label %152

152:                                              ; preds = %151, %112
  %153 = load i8*, i8** %8, align 8
  %154 = call i32 @free(i8* %153)
  br label %159

155:                                              ; preds = %2
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = load i32, i32* @help_msg_ac, align 4
  %158 = call i32 @r_core_cmd_help(%struct.TYPE_6__* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %152, %73, %40, %34, %27
  %160 = load i32, i32* %5, align 4
  switch i32 %160, label %165 [
    i32 128, label %161
    i32 129, label %163
  ]

161:                                              ; preds = %159
  %162 = call i32 @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %166

163:                                              ; preds = %159
  %164 = call i32 @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %166

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %165, %163, %161
  ret void
}

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @r_num_get(i32, i8*) #1

declare dso_local i32 @r_anal_class_method_set(i32, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @r_anal_class_method_rename(i32, i8*, i8*, i8*) #1

declare dso_local i32 @r_anal_class_method_delete(i32, i8*, i8*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
