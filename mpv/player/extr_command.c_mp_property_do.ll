; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_do.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.m_option = type { i32*, i32 }

@MSGL_V = common dso_local global i32 0, align 4
@m_option_type_node = common dso_local global i32 0, align 4
@m_option_type_string = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Set property: %s%s%s -> %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_property_do(i8* %0, i32 %1, i8* %2, %struct.MPContext* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.MPContext*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.m_option, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.MPContext* %3, %struct.MPContext** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.MPContext*, %struct.MPContext** %8, align 8
  %17 = call i32 @mp_property_do_silent(i8* %13, i32 %14, i8* %15, %struct.MPContext* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.MPContext*, %struct.MPContext** %8, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MSGL_V, align 4
  %22 = call i64 @mp_msg_test(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @is_property_set(i32 %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %24
  %30 = bitcast %struct.m_option* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 16, i1 false)
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** %11, align 8
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %38 [
    i32 129, label %33
    i32 128, label %35
  ]

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.m_option, %struct.m_option* %10, i32 0, i32 0
  store i32* @m_option_type_node, i32** %34, align 8
  br label %38

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.m_option, %struct.m_option* %10, i32 0, i32 0
  store i32* @m_option_type_string, i32** %36, align 8
  %37 = bitcast i8** %7 to i8*
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %29, %35, %33
  %39 = getelementptr inbounds %struct.m_option, %struct.m_option* %10, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i8*, i8** %11, align 8
  %44 = call i8* @m_option_print(%struct.m_option* %10, i8* %43)
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i8* [ %44, %42 ], [ null, %45 ]
  store i8* %47, i8** %12, align 8
  %48 = load %struct.MPContext*, %struct.MPContext** %8, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = icmp ne i8* %50, null
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i8*, i8** %12, align 8
  br label %59

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %58 ]
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @MP_VERBOSE(%struct.MPContext* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %53, i8* %60, i32 %61)
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @talloc_free(i8* %63)
  br label %65

65:                                               ; preds = %59, %24, %4
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @mp_property_do_silent(i8*, i32, i8*, %struct.MPContext*) #1

declare dso_local i64 @mp_msg_test(i32, i32) #1

declare dso_local i64 @is_property_set(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @m_option_print(%struct.m_option*, i8*) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
