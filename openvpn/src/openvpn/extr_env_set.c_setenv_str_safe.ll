; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_setenv_str_safe.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_setenv_str_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.buffer = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"OPENVPN_%s\00", align 1
@M_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"setenv_str_safe: name overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setenv_str_safe(%struct.env_set* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.env_set*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [64 x i32], align 16
  %8 = alloca %struct.buffer, align 4
  store %struct.env_set* %0, %struct.env_set** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %10 = call i32 @buf_set_write(%struct.buffer* %8, i32* %9, i32 256)
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @buf_printf(%struct.buffer* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.env_set*, %struct.env_set** %4, align 8
  %16 = call i32 @BSTR(%struct.buffer* %8)
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @setenv_str(%struct.env_set* %15, i32 %16, i8* %17)
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @M_WARN, align 4
  %21 = call i32 @msg(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @buf_set_write(%struct.buffer*, i32*, i32) #1

declare dso_local i64 @buf_printf(%struct.buffer*, i8*, i8*) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i32, i8*) #1

declare dso_local i32 @BSTR(%struct.buffer*) #1

declare dso_local i32 @msg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
