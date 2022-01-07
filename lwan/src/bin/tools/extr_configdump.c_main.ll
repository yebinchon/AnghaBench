; ModuleID = '/home/carl/AnghaBench/lwan/src/bin/tools/extr_configdump.c_main.c'
source_filename = "/home/carl/AnghaBench/lwan/src/bin/tools/extr_configdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Usage: %s /path/to/config/file.conf\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not open configuration file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.config*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 1, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call %struct.config* @config_open(i8* %18)
  store %struct.config* %19, %struct.config** %6, align 8
  %20 = load %struct.config*, %struct.config** %6, align 8
  %21 = icmp ne %struct.config* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 1, i32* %3, align 4
  br label %33

27:                                               ; preds = %15
  %28 = load %struct.config*, %struct.config** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dump(%struct.config* %28, i32 %29)
  %31 = load %struct.config*, %struct.config** %6, align 8
  %32 = call i32 @config_close(%struct.config* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %22, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @lwan_status_critical(i8*, i8*) #1

declare dso_local %struct.config* @config_open(i8*) #1

declare dso_local i32 @lwan_status_critical_perror(i8*, i8*) #1

declare dso_local i32 @dump(%struct.config*, i32) #1

declare dso_local i32 @config_close(%struct.config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
