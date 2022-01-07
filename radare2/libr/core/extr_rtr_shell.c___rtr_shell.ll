; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_rtr_shell.c___rtr_shell.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_rtr_shell.c___rtr_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"[%s://%s:%s/%s]> \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"[%s:%s]$ \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"!sh\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"http://%s:%s/%s!%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"TT\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @__rtr_shell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rtr_shell(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_4__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  store i32* null, i32** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %26, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %27, i8* %28, i8* %29, i8* %30)
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %32, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %178, %2
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %38 = call i32 @r_line_set_prompt(i8* %37)
  %39 = call i8* (...) @r_line_readline()
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i8*, i8** %14, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %36
  br label %179

47:                                               ; preds = %42
  %48 = load i8*, i8** %14, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 113
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %179

53:                                               ; preds = %47
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %132, label %57

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %126, %57
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %60 = call i32 @r_line_set_prompt(i8* %59)
  %61 = call i8* (...) @r_line_readline()
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load i8*, i8** %14, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68, %64, %58
  br label %131

73:                                               ; preds = %68
  %74 = load i8*, i8** %14, align 8
  %75 = call i8* @r_str_uri_encode(i8* %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %76, i8* %77, i8* %78, i8* %79)
  store i8* %80, i8** %17, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = call i8* @r_socket_http_get(i8* %81, i32* null, i32* %13)
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %126

85:                                               ; preds = %73
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %11, align 8
  %91 = call i8* @strstr(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %91, i8** %14, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = call i8* @strstr(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %97, i8** %14, align 8
  br label %98

98:                                               ; preds = %94, %85
  %99 = load i8*, i8** %14, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i8*, i8** %14, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  br label %106

104:                                              ; preds = %98
  %105 = load i8*, i8** %11, align 8
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i8* [ %103, %101 ], [ %105, %104 ]
  store i8* %107, i8** %14, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 10
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  store i8* %118, i8** %18, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %18, align 8
  %121 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %119, i8* %120)
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @r_line_hist_add(i8* %122)
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @free(i8* %124)
  br label %126

126:                                              ; preds = %106, %73
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 @free(i8* %127)
  %129 = load i8*, i8** %17, align 8
  %130 = call i32 @free(i8* %129)
  br label %58

131:                                              ; preds = %72
  br label %178

132:                                              ; preds = %53
  %133 = load i8*, i8** %14, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 118
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load i8*, i8** %14, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 86
  br i1 %143, label %144, label %159

144:                                              ; preds = %138, %132
  %145 = load i8*, i8** %14, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 32
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  %151 = load i32*, i32** %3, align 8
  %152 = load i8*, i8** %14, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = call i32 @rtr_visual(i32* %151, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %16, i8* %153)
  br label %158

155:                                              ; preds = %144
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @rtr_visual(i32* %156, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %16, i8* null)
  br label %158

158:                                              ; preds = %155, %150
  br label %177

159:                                              ; preds = %138
  %160 = load i8*, i8** %14, align 8
  %161 = call i32 @strcmp(i8* %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @rtr_textlog_chat(i32* %164, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %16)
  br label %176

166:                                              ; preds = %159
  %167 = load i32, i32* %4, align 4
  %168 = load i8*, i8** %14, align 8
  %169 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %167, i8* %168)
  store i8* %169, i8** %19, align 8
  %170 = load i32*, i32** %3, align 8
  %171 = load i8*, i8** %19, align 8
  %172 = call i32 @r_core_rtr_cmd(i32* %170, i8* %171)
  %173 = call i32 (...) @r_cons_flush()
  %174 = load i8*, i8** %14, align 8
  %175 = call i32 @r_line_hist_add(i8* %174)
  br label %176

176:                                              ; preds = %166, %163
  br label %177

177:                                              ; preds = %176, %158
  br label %178

178:                                              ; preds = %177, %131
  br label %36

179:                                              ; preds = %52, %46
  %180 = load i32*, i32** %15, align 8
  %181 = call i32 @r_socket_free(i32* %180)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @r_line_set_prompt(i8*) #1

declare dso_local i8* @r_line_readline(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @r_str_uri_encode(i8*) #1

declare dso_local i8* @r_str_newf(i8*, ...) #1

declare dso_local i8* @r_socket_http_get(i8*, i32*, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @r_line_hist_add(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rtr_visual(i32*, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8, i8*) #1

declare dso_local i32 @rtr_textlog_chat(i32*, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

declare dso_local i32 @r_core_rtr_cmd(i32*, i8*) #1

declare dso_local i32 @r_cons_flush(...) #1

declare dso_local i32 @r_socket_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
