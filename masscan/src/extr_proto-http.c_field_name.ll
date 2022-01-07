; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-http.c_field_name.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-http.c_field_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }
%struct.Patterns = type { i8*, i64, i64 }

@HTTPFIELD_INCOMPLETE = common dso_local global i64 0, align 8
@HTTPFIELD_UNKNOWN = common dso_local global i64 0, align 8
@HTTPFIELD_NEWLINE = common dso_local global i64 0, align 8
@PROTO_HTTP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @field_name(%struct.BannerOutput* %0, i64 %1, %struct.Patterns* %2) #0 {
  %4 = alloca %struct.BannerOutput*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.Patterns*, align 8
  %7 = alloca i32, align 4
  store %struct.BannerOutput* %0, %struct.BannerOutput** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.Patterns* %2, %struct.Patterns** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @HTTPFIELD_INCOMPLETE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %91

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @HTTPFIELD_UNKNOWN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %91

17:                                               ; preds = %12
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @HTTPFIELD_NEWLINE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %91

22:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %88, %22
  %24 = load %struct.Patterns*, %struct.Patterns** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.Patterns, %struct.Patterns* %24, i64 %26
  %28 = getelementptr inbounds %struct.Patterns, %struct.Patterns* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %91

31:                                               ; preds = %23
  %32 = load %struct.Patterns*, %struct.Patterns** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.Patterns, %struct.Patterns* %32, i64 %34
  %36 = getelementptr inbounds %struct.Patterns, %struct.Patterns* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %87

40:                                               ; preds = %31
  %41 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %42 = load i32, i32* @PROTO_HTTP, align 4
  %43 = call i32 @banout_newline(%struct.BannerOutput* %41, i32 %42)
  %44 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %45 = load i32, i32* @PROTO_HTTP, align 4
  %46 = load %struct.Patterns*, %struct.Patterns** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Patterns, %struct.Patterns* %46, i64 %48
  %50 = getelementptr inbounds %struct.Patterns, %struct.Patterns* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.Patterns*, %struct.Patterns** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.Patterns, %struct.Patterns* %52, i64 %54
  %56 = getelementptr inbounds %struct.Patterns, %struct.Patterns* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %51, i64 %64
  %66 = load %struct.Patterns*, %struct.Patterns** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.Patterns, %struct.Patterns* %66, i64 %68
  %70 = getelementptr inbounds %struct.Patterns, %struct.Patterns* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.Patterns*, %struct.Patterns** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.Patterns, %struct.Patterns* %72, i64 %74
  %76 = getelementptr inbounds %struct.Patterns, %struct.Patterns* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 60
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %71, %84
  %86 = call i32 @banout_append(%struct.BannerOutput* %44, i32 %45, i8* %65, i64 %85)
  br label %91

87:                                               ; preds = %31
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %23

91:                                               ; preds = %11, %16, %21, %40, %23
  ret void
}

declare dso_local i32 @banout_newline(%struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
