; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_error.c_redirect_stdout_stderr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_error.c_redirect_stdout_stderr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"WARNING: The --log option is not supported on this OS because it lacks the dup2 function\00", align 1
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FILE_END = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@INVALID_SET_FILE_POINTER = common dso_local global i64 0, align 8
@M_ERR = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@OPEN_ALWAYS = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@_O_TEXT = common dso_local global i32 0, align 4
@msgfp = common dso_local global i32* null, align 8
@orig_stderr = common dso_local global i32 0, align 4
@std_redir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redirect_stdout_stderr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @M_WARN, align 4
  %6 = call i32 (i32, i8*, ...) @msg(i32 %5, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @msg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
