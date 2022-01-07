; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_handle_set_opt_flags.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_handle_set_opt_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32 }
%struct.m_config_option = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@M_SETOPT_CHECK_ONLY = common dso_local global i32 0, align 4
@M_SETOPT_PRE_PARSE_ONLY = common dso_local global i32 0, align 4
@M_OPT_PRE_PARSE = common dso_local global i32 0, align 4
@M_SETOPT_PRESERVE_CMDLINE = common dso_local global i32 0, align 4
@M_SETOPT_NO_OVERWRITE = common dso_local global i32 0, align 4
@M_SETOPT_NO_PRE_PARSE = common dso_local global i32 0, align 4
@M_OPT_INVALID = common dso_local global i32 0, align 4
@M_SETOPT_FROM_CONFIG_FILE = common dso_local global i32 0, align 4
@M_OPT_NOCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"The %s option can't be used in a config file.\0A\00", align 1
@M_SETOPT_BACKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_config*, %struct.m_config_option*, i32)* @handle_set_opt_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_set_opt_flags(%struct.m_config* %0, %struct.m_config_option* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_config*, align 8
  %6 = alloca %struct.m_config_option*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.m_config* %0, %struct.m_config** %5, align 8
  store %struct.m_config_option* %1, %struct.m_config_option** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %11 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @M_SETOPT_CHECK_ONLY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @M_SETOPT_PRE_PARSE_ONLY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @M_OPT_PRE_PARSE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %104

31:                                               ; preds = %25, %3
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @M_SETOPT_PRESERVE_CMDLINE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %38 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %36, %31
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @M_SETOPT_NO_OVERWRITE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %49 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %54 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %47
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %52, %42
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @M_SETOPT_NO_PRE_PARSE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @M_OPT_PRE_PARSE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %69, i32* %4, align 4
  br label %104

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @M_SETOPT_FROM_CONFIG_FILE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @M_OPT_NOCFG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.m_config*, %struct.m_config** %5, align 8
  %82 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %83 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @MP_ERR(%struct.m_config* %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %86, i32* %4, align 4
  br label %104

87:                                               ; preds = %75, %70
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @M_SETOPT_BACKUP, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.m_config*, %struct.m_config** %5, align 8
  %97 = load %struct.m_config_option*, %struct.m_config_option** %6, align 8
  %98 = call i32 @ensure_backup(%struct.m_config* %96, %struct.m_config_option* %97)
  br label %99

99:                                               ; preds = %95, %92, %87
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 2, i32 1
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %99, %80, %68, %30
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @MP_ERR(%struct.m_config*, i8*, i32) #1

declare dso_local i32 @ensure_backup(%struct.m_config*, %struct.m_config_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
