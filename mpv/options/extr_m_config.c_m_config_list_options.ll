; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_list_options.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_list_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32, %struct.m_config_option* }
%struct.m_config_option = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @m_config_list_options(i8* %0, %struct.m_config* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.m_config*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.m_config_option*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.m_config* %1, %struct.m_config** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i8** @talloc_new(i8* %10)
  store i8** %11, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %41, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.m_config*, %struct.m_config** %4, align 8
  %15 = getelementptr inbounds %struct.m_config, %struct.m_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.m_config*, %struct.m_config** %4, align 8
  %20 = getelementptr inbounds %struct.m_config, %struct.m_config* %19, i32 0, i32 1
  %21 = load %struct.m_config_option*, %struct.m_config_option** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %21, i64 %23
  store %struct.m_config_option* %24, %struct.m_config_option** %8, align 8
  %25 = load %struct.m_config_option*, %struct.m_config_option** %8, align 8
  %26 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %41

30:                                               ; preds = %18
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.m_config_option*, %struct.m_config_option** %8, align 8
  %33 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @talloc_strdup(i8* %31, i32 %34)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @MP_TARRAY_APPEND(i8* %36, i8** %37, i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %30, %29
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %12

44:                                               ; preds = %12
  %45 = load i8*, i8** %3, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @MP_TARRAY_APPEND(i8* %45, i8** %46, i32 %47, i8* null)
  %49 = load i8**, i8*** %5, align 8
  ret i8** %49
}

declare dso_local i8** @talloc_new(i8*) #1

declare dso_local i8* @talloc_strdup(i8*, i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(i8*, i8**, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
