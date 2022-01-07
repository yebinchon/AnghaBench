; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_append_bind_info.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_append_bind_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32 }
%struct.cmd_bind = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mp_cmd = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c" '%.*s'\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" (invalid)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c" in section {%s}\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" in %s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_ctx*, i8**, %struct.cmd_bind*)* @append_bind_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_bind_info(%struct.input_ctx* %0, i8** %1, %struct.cmd_bind* %2) #0 {
  %4 = alloca %struct.input_ctx*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_bind*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mp_cmd*, align 8
  %9 = alloca i32, align 4
  store %struct.input_ctx* %0, %struct.input_ctx** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_bind* %2, %struct.cmd_bind** %6, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %13 = load %struct.cmd_bind*, %struct.cmd_bind** %6, align 8
  %14 = getelementptr inbounds %struct.cmd_bind, %struct.cmd_bind* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bstr0(i32 %15)
  %17 = load %struct.cmd_bind*, %struct.cmd_bind** %6, align 8
  %18 = getelementptr inbounds %struct.cmd_bind, %struct.cmd_bind* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.mp_cmd* @mp_input_parse_cmd(%struct.input_ctx* %12, i32 %16, i32 %19)
  store %struct.mp_cmd* %20, %struct.mp_cmd** %8, align 8
  %21 = load %struct.mp_cmd*, %struct.mp_cmd** %8, align 8
  %22 = icmp ne %struct.mp_cmd* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.mp_cmd*, %struct.mp_cmd** %8, align 8
  %25 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.cmd_bind*, %struct.cmd_bind** %6, align 8
  %29 = getelementptr inbounds %struct.cmd_bind, %struct.cmd_bind* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bstr0(i32 %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i32 [ %26, %23 ], [ %31, %27 ]
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @BSTR_P(i32 %35)
  %37 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i8* %37, i8** %7, align 8
  %38 = load %struct.mp_cmd*, %struct.mp_cmd** %8, align 8
  %39 = icmp ne %struct.mp_cmd* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i8*, i8** %7, align 8
  %42 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.cmd_bind*, %struct.cmd_bind** %6, align 8
  %45 = getelementptr inbounds %struct.cmd_bind, %struct.cmd_bind* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @strcmp(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.cmd_bind*, %struct.cmd_bind** %6, align 8
  %54 = getelementptr inbounds %struct.cmd_bind, %struct.cmd_bind* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %51, %43
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.cmd_bind*, %struct.cmd_bind** %6, align 8
  %62 = getelementptr inbounds %struct.cmd_bind, %struct.cmd_bind* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  store i8* %64, i8** %7, align 8
  %65 = load %struct.cmd_bind*, %struct.cmd_bind** %6, align 8
  %66 = getelementptr inbounds %struct.cmd_bind, %struct.cmd_bind* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i8*, i8** %7, align 8
  %71 = call i8* (i8*, i8*, ...) @talloc_asprintf_append(i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* %71, i8** %7, align 8
  br label %72

72:                                               ; preds = %69, %59
  %73 = load %struct.mp_cmd*, %struct.mp_cmd** %8, align 8
  %74 = call i32 @talloc_free(%struct.mp_cmd* %73)
  %75 = load i8*, i8** %7, align 8
  %76 = load i8**, i8*** %5, align 8
  store i8* %75, i8** %76, align 8
  ret void
}

declare dso_local %struct.mp_cmd* @mp_input_parse_cmd(%struct.input_ctx*, i32, i32) #1

declare dso_local i32 @bstr0(i32) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, ...) #1

declare dso_local i32 @BSTR_P(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @talloc_free(%struct.mp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
