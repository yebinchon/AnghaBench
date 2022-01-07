; ModuleID = '/home/carl/AnghaBench/mpv/test/extr_json.c_run.c'
source_filename = "/home/carl/AnghaBench/mpv/test/extr_json.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, i32, i32, i32 }
%struct.test_ctx = type { i32 }
%struct.mpv_node = type { i32 }

@entries = common dso_local global %struct.entry* null, align 8
@MAX_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_ctx*)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run(%struct.test_ctx* %0) #0 {
  %2 = alloca %struct.test_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpv_node, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.test_ctx* %0, %struct.test_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %62, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.entry*, %struct.entry** @entries, align 8
  %13 = call i32 @MP_ARRAY_SIZE(%struct.entry* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %10
  %16 = load %struct.entry*, %struct.entry** @entries, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.entry, %struct.entry* %16, i64 %18
  store %struct.entry* %19, %struct.entry** %4, align 8
  %20 = call i8* @talloc_new(i32* null)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.entry*, %struct.entry** %4, align 8
  %23 = getelementptr inbounds %struct.entry, %struct.entry* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @talloc_strdup(i8* %21, i8* %24)
  store i8* %25, i8** %6, align 8
  %26 = call i32 @json_skip_whitespace(i8** %6)
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @MAX_DEPTH, align 4
  %29 = call i64 @json_parse(i8* %27, %struct.mpv_node* %7, i8** %6, i32 %28)
  %30 = icmp sge i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.entry*, %struct.entry** %4, align 8
  %34 = getelementptr inbounds %struct.entry, %struct.entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_true(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %15
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @talloc_free(i8* %42)
  br label %62

44:                                               ; preds = %15
  %45 = load i8*, i8** %5, align 8
  %46 = call i8* @talloc_strdup(i8* %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %46, i8** %9, align 8
  %47 = call i64 @json_write(i8** %9, %struct.mpv_node* %7)
  %48 = icmp sge i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert_true(i32 %49)
  %51 = load %struct.entry*, %struct.entry** %4, align 8
  %52 = getelementptr inbounds %struct.entry, %struct.entry* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @assert_string_equal(i32 %53, i8* %54)
  %56 = load %struct.entry*, %struct.entry** %4, align 8
  %57 = getelementptr inbounds %struct.entry, %struct.entry* %56, i32 0, i32 2
  %58 = call i32 @equal_mpv_node(i32* %57, %struct.mpv_node* %7)
  %59 = call i32 @assert_true(i32 %58)
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @talloc_free(i8* %60)
  br label %62

62:                                               ; preds = %44, %41
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %10

65:                                               ; preds = %10
  ret void
}

declare dso_local i32 @MP_ARRAY_SIZE(%struct.entry*) #1

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i8* @talloc_strdup(i8*, i8*) #1

declare dso_local i32 @json_skip_whitespace(i8**) #1

declare dso_local i64 @json_parse(i8*, %struct.mpv_node*, i8**, i32) #1

declare dso_local i32 @assert_true(i32) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i64 @json_write(i8**, %struct.mpv_node*) #1

declare dso_local i32 @assert_string_equal(i32, i8*) #1

declare dso_local i32 @equal_mpv_node(i32*, %struct.mpv_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
