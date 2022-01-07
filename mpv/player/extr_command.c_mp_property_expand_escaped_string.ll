; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_expand_escaped_string.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_expand_escaped_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"(broken escape sequences)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_property_expand_escaped_string(%struct.MPContext* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = call i8* @talloc_new(i32* null)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  call void @bstr0(%struct.TYPE_8__* sret %7, i8* %12)
  %13 = bitcast %struct.TYPE_8__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  br label %14

14:                                               ; preds = %30, %2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @mp_append_escaped_string(i8* %19, %struct.TYPE_8__* %8, %struct.TYPE_8__* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @talloc_free(i8* %23)
  %25 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %3, align 8
  br label %41

26:                                               ; preds = %18
  %27 = call i32 @bstr_eatstart0(%struct.TYPE_8__* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  call void @bstr0(%struct.TYPE_8__* sret %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @bstr_xappend(i8* %31, %struct.TYPE_8__* %8, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %9)
  br label %14

33:                                               ; preds = %29, %14
  %34 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @mp_property_expand_string(%struct.MPContext* %34, i32 %36)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @talloc_free(i8* %38)
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %33, %22
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local void @bstr0(%struct.TYPE_8__* sret, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mp_append_escaped_string(i8*, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i32 @bstr_eatstart0(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @bstr_xappend(i8*, %struct.TYPE_8__*, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i8* @mp_property_expand_string(%struct.MPContext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
