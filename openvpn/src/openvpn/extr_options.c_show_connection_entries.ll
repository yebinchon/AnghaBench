; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_show_connection_entries.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_show_connection_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, %struct.connection_list* }
%struct.connection_list = type { i32, i32** }

@D_SHOW_PARMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Connection profiles [%d]:\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Connection profiles [default]:\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Connection profiles END\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options*)* @show_connection_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_connection_entries(%struct.options* %0) #0 {
  %2 = alloca %struct.options*, align 8
  %3 = alloca %struct.connection_list*, align 8
  %4 = alloca i32, align 4
  store %struct.options* %0, %struct.options** %2, align 8
  %5 = load %struct.options*, %struct.options** %2, align 8
  %6 = getelementptr inbounds %struct.options, %struct.options* %5, i32 0, i32 1
  %7 = load %struct.connection_list*, %struct.connection_list** %6, align 8
  %8 = icmp ne %struct.connection_list* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load %struct.options*, %struct.options** %2, align 8
  %11 = getelementptr inbounds %struct.options, %struct.options* %10, i32 0, i32 1
  %12 = load %struct.connection_list*, %struct.connection_list** %11, align 8
  store %struct.connection_list* %12, %struct.connection_list** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %31, %9
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %16 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load i32, i32* @D_SHOW_PARMS, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i32, i8*, ...) @msg(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %24 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @show_connection_entry(i32* %29)
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %13

34:                                               ; preds = %13
  br label %41

35:                                               ; preds = %1
  %36 = load i32, i32* @D_SHOW_PARMS, align 4
  %37 = call i32 (i32, i8*, ...) @msg(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.options*, %struct.options** %2, align 8
  %39 = getelementptr inbounds %struct.options, %struct.options* %38, i32 0, i32 0
  %40 = call i32 @show_connection_entry(i32* %39)
  br label %41

41:                                               ; preds = %35, %34
  %42 = load i32, i32* @D_SHOW_PARMS, align 4
  %43 = call i32 (i32, i8*, ...) @msg(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @show_connection_entry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
