; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_commands.c_redis_fmt_scan_cmd.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_commands.c_redis_fmt_scan_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32 }

@redis_fmt_scan_cmd.kw = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"SCAN\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"SSCAN\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"HSCAN\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ZSCAN\00", align 1
@TYPE_SCAN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"COUNT\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"MATCH\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_fmt_scan_cmd(i8** %0, i64 %1, i8* %2, i32 %3, i64 %4, i8* %5, i32 %6, i64 %7) #0 {
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__, align 8
  store i8** %0, i8*** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %19 = bitcast %struct.TYPE_5__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @TYPE_SCAN, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = add nsw i32 1, %23
  %25 = load i32, i32* %15, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2, i32 0
  %29 = add nsw i32 %24, %28
  %30 = load i64, i64* %16, align 8
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 2, i32 0
  %34 = add nsw i32 %29, %33
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds [4 x i8*], [4 x i8*]* @redis_fmt_scan_cmd.kw, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* @redis_fmt_scan_cmd.kw, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @redis_cmd_init_sstr(%struct.TYPE_5__* %18, i32 %35, i8* %38, i32 %42)
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @TYPE_SCAN, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %8
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @redis_cmd_append_sstr(%struct.TYPE_5__* %18, i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %8
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @redis_cmd_append_sstr_long(%struct.TYPE_5__* %18, i64 %52)
  %54 = load i64, i64* %16, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = call i32 @redis_cmd_append_sstr(%struct.TYPE_5__* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %58 = load i64, i64* %16, align 8
  %59 = call i32 @redis_cmd_append_sstr_long(%struct.TYPE_5__* %18, i64 %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = call i32 @redis_cmd_append_sstr(%struct.TYPE_5__* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @redis_cmd_append_sstr(%struct.TYPE_5__* %18, i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %60
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8**, i8*** %9, align 8
  store i8* %70, i8** %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @redis_cmd_init_sstr(%struct.TYPE_5__*, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @redis_cmd_append_sstr(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @redis_cmd_append_sstr_long(%struct.TYPE_5__*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
