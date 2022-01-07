; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_filename.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.m_property_action_arg = type { i32, i8*, i32 }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@M_PROPERTY_KEY_ACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"no-ext\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_filename(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.m_property_action_arg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %10, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %23, i32* %5, align 4
  br label %82

24:                                               ; preds = %4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @talloc_strdup(i32* null, i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @bstr0(i8* %29)
  %31 = call i64 @mp_is_url(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @mp_url_unescape_inplace(i8* %34)
  br label %36

36:                                               ; preds = %33, %24
  %37 = load i8*, i8** %11, align 8
  %38 = call i64 @mp_basename(i8* %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = load i8*, i8** %11, align 8
  store i8* %45, i8** %12, align 8
  br label %46

46:                                               ; preds = %44, %36
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @M_PROPERTY_KEY_ACTION, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast i8* %51 to %struct.m_property_action_arg*
  store %struct.m_property_action_arg* %52, %struct.m_property_action_arg** %13, align 8
  %53 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %13, align 8
  %54 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @strcmp(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %50
  %59 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %13, align 8
  %60 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %8, align 4
  %62 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %13, align 8
  %63 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i64 @mp_splitext(i8* %65, i32* %14)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i8* @bstrto0(i8* %69, i32 %70)
  store i8* %71, i8** %12, align 8
  br label %72

72:                                               ; preds = %68, %58
  br label %73

73:                                               ; preds = %72, %50
  br label %74

74:                                               ; preds = %73, %46
  %75 = load i32, i32* %8, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @m_property_strdup_ro(i32 %75, i8* %76, i8* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @talloc_free(i8* %79)
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %74, %22
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i8* @talloc_strdup(i32*, i32) #1

declare dso_local i64 @mp_is_url(i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @mp_url_unescape_inplace(i8*) #1

declare dso_local i64 @mp_basename(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @mp_splitext(i8*, i32*) #1

declare dso_local i8* @bstrto0(i8*, i32) #1

declare dso_local i32 @m_property_strdup_ro(i32, i8*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
