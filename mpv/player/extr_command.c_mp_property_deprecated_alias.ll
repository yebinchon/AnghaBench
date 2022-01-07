; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_deprecated_alias.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_deprecated_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i8*, i64 }
%struct.TYPE_3__ = type { %struct.command_ctx* }
%struct.command_ctx = type { i32, i32* }

@.str = private unnamed_addr constant [83 x i8] c"Warning: property '%s' was replaced with '%s' and might be removed in the future.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_deprecated_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_deprecated_alias(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.m_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.command_ctx*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.m_property* %1, %struct.m_property** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %9, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.command_ctx*, %struct.command_ctx** %16, align 8
  store %struct.command_ctx* %17, %struct.command_ctx** %10, align 8
  %18 = load %struct.m_property*, %struct.m_property** %6, align 8
  %19 = getelementptr inbounds %struct.m_property, %struct.m_property* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %42, %4
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.command_ctx*, %struct.command_ctx** %10, align 8
  %24 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.command_ctx*, %struct.command_ctx** %10, align 8
  %29 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.m_property*, %struct.m_property** %6, align 8
  %36 = getelementptr inbounds %struct.m_property, %struct.m_property* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @strcmp(i32 %34, i64 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %64

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %21

45:                                               ; preds = %21
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = load %struct.m_property*, %struct.m_property** %6, align 8
  %48 = getelementptr inbounds %struct.m_property, %struct.m_property* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @MP_WARN(%struct.TYPE_3__* %46, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %49, i8* %50)
  %52 = load %struct.command_ctx*, %struct.command_ctx** %10, align 8
  %53 = load %struct.command_ctx*, %struct.command_ctx** %10, align 8
  %54 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.command_ctx*, %struct.command_ctx** %10, align 8
  %57 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.m_property*, %struct.m_property** %6, align 8
  %60 = getelementptr inbounds %struct.m_property, %struct.m_property* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @MP_TARRAY_APPEND(%struct.command_ctx* %52, i32* %55, i32 %58, i8* %62)
  br label %64

64:                                               ; preds = %45, %40
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @mp_property_do(i8* %65, i32 %66, i8* %67, i8* %68)
  ret i32 %69
}

declare dso_local i64 @strcmp(i32, i64) #1

declare dso_local i32 @MP_WARN(%struct.TYPE_3__*, i8*, i64, i8*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.command_ctx*, i32*, i32, i8*) #1

declare dso_local i32 @mp_property_do(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
