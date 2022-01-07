; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_server_import.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_server_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32 }
%struct.env_set = type { i32 }

@D_PUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"OPTIONS IMPORT: reading client specific options from: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @options_server_import(%struct.options* %0, i8* %1, i32 %2, i32 %3, i32* %4, %struct.env_set* %5) #0 {
  %7 = alloca %struct.options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.env_set*, align 8
  store %struct.options* %0, %struct.options** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.env_set* %5, %struct.env_set** %12, align 8
  %13 = load i32, i32* @D_PUSH, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @msg(i32 %13, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.options*, %struct.options** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = load %struct.env_set*, %struct.env_set** %12, align 8
  %23 = call i32 @read_config_file(%struct.options* %16, i8* %17, i32 0, i8* %18, i32 0, i32 %19, i32 %20, i32* %21, %struct.env_set* %22)
  ret void
}

declare dso_local i32 @msg(i32, i8*, i8*) #1

declare dso_local i32 @read_config_file(%struct.options*, i8*, i32, i8*, i32, i32, i32, i32*, %struct.env_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
