; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-rewrite.c_rewrite_parse_conf.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-rewrite.c_rewrite_parse_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }
%struct.private_data = type { i32 }
%struct.config_line = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Unknown option: %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown section: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.config*)* @rewrite_parse_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rewrite_parse_conf(i8* %0, %struct.config* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.config*, align 8
  %5 = alloca %struct.private_data*, align 8
  %6 = alloca %struct.config_line*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.config* %1, %struct.config** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.private_data*
  store %struct.private_data* %8, %struct.private_data** %5, align 8
  br label %9

9:                                                ; preds = %42, %2
  %10 = load %struct.config*, %struct.config** %4, align 8
  %11 = call %struct.config_line* @config_read_line(%struct.config* %10)
  store %struct.config_line* %11, %struct.config_line** %6, align 8
  %12 = icmp ne %struct.config_line* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  %14 = load %struct.config_line*, %struct.config_line** %6, align 8
  %15 = getelementptr inbounds %struct.config_line, %struct.config_line* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %42 [
    i32 130, label %17
    i32 129, label %23
    i32 128, label %41
  ]

17:                                               ; preds = %13
  %18 = load %struct.config*, %struct.config** %4, align 8
  %19 = load %struct.config_line*, %struct.config_line** %6, align 8
  %20 = getelementptr inbounds %struct.config_line, %struct.config_line* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @config_error(%struct.config* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %42

23:                                               ; preds = %13
  %24 = load %struct.config_line*, %struct.config_line** %6, align 8
  %25 = getelementptr inbounds %struct.config_line, %struct.config_line* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @streq(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.private_data*, %struct.private_data** %5, align 8
  %31 = load %struct.config*, %struct.config** %4, align 8
  %32 = load %struct.config_line*, %struct.config_line** %6, align 8
  %33 = call i32 @rewrite_parse_conf_pattern(%struct.private_data* %30, %struct.config* %31, %struct.config_line* %32)
  br label %40

34:                                               ; preds = %23
  %35 = load %struct.config*, %struct.config** %4, align 8
  %36 = load %struct.config_line*, %struct.config_line** %6, align 8
  %37 = getelementptr inbounds %struct.config_line, %struct.config_line* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @config_error(%struct.config* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %29
  br label %42

41:                                               ; preds = %13
  br label %42

42:                                               ; preds = %13, %41, %40, %17
  br label %9

43:                                               ; preds = %9
  %44 = load %struct.config*, %struct.config** %4, align 8
  %45 = call i32 @config_last_error(%struct.config* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local %struct.config_line* @config_read_line(%struct.config*) #1

declare dso_local i32 @config_error(%struct.config*, i8*, i32) #1

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local i32 @rewrite_parse_conf_pattern(%struct.private_data*, %struct.config*, %struct.config_line*) #1

declare dso_local i32 @config_last_error(%struct.config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
