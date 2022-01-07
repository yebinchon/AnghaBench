; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_set_user_script.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_set_user_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i32* }

@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Multiple --%s scripts defined.  The previously configured script is overridden.\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"--%s script\00", align 1
@M_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Please correct this error.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options*, i8**, i8*, i8*, i32)* @set_user_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_user_script(%struct.options* %0, i8** %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.options*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [100 x i8], align 16
  store %struct.options* %0, %struct.options** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32, i32* @M_WARN, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 (i32, i8*, ...) @msg(i32 %16, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %5
  %20 = load i8*, i8** %8, align 8
  %21 = load i8**, i8*** %7, align 8
  store i8* %20, i8** %21, align 8
  %22 = load %struct.options*, %struct.options** %6, align 8
  %23 = getelementptr inbounds %struct.options, %struct.options* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @openvpn_snprintf(i8* %24, i32 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i8**, i8*** %7, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load %struct.options*, %struct.options** %6, align 8
  %34 = getelementptr inbounds %struct.options, %struct.options* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  br label %37

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32* [ %35, %32 ], [ null, %36 ]
  %39 = call i64 @check_cmd_access(i8* %28, i8* %29, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @M_USAGE, align 4
  %43 = call i32 (i32, i8*, ...) @msg(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  ret void
}

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @openvpn_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @check_cmd_access(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
