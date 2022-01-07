; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_run_command.c_openvpn_execve.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_run_command.c_openvpn_execve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv = type { i8** }
%struct.env_set = type { i32 }
%struct.gc_arena = type { i32 }

@OPENVPN_EXECVE_ERROR = common dso_local global i32 0, align 4
@openvpn_execve.warn_shown = internal global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"openvpn_execve: execve function not available\00", align 1
@M_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"openvpn_execve: called with empty argv\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@OPENVPN_EXECVE_FAILURE = common dso_local global i32 0, align 4
@OPENVPN_EXECVE_NOT_ALLOWED = common dso_local global i32 0, align 4
@SCRIPT_SECURITY_WARNING = common dso_local global i8* null, align 8
@SSEC_SCRIPTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openvpn_execve(%struct.argv* %0, %struct.env_set* %1, i32 %2) #0 {
  %4 = alloca %struct.argv*, align 8
  %5 = alloca %struct.env_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gc_arena, align 4
  %8 = alloca i32, align 4
  store %struct.argv* %0, %struct.argv** %4, align 8
  store %struct.env_set* %1, %struct.env_set** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @gc_new()
  %10 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @OPENVPN_EXECVE_ERROR, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.argv*, %struct.argv** %4, align 8
  %13 = icmp ne %struct.argv* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.argv*, %struct.argv** %4, align 8
  %16 = getelementptr inbounds %struct.argv, %struct.argv* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @M_WARN, align 4
  %23 = call i32 @msg(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %27

24:                                               ; preds = %14, %3
  %25 = load i32, i32* @M_FATAL, align 4
  %26 = call i32 @msg(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  %28 = call i32 @gc_free(%struct.gc_arena* %7)
  %29 = load i32, i32* %8, align 4
  ret i32 %29
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
