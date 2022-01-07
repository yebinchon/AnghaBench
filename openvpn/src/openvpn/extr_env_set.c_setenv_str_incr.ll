; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_setenv_str_incr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_setenv_str_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s_%u\00", align 1
@D_TLS_DEBUG_MED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Too many same-name env variables, ignoring: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setenv_str_incr(%struct.env_set* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.env_set*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.env_set* %0, %struct.env_set** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = add nsw i32 %11, 5
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i8* @gc_malloc(i64 %14, i32 1, i32* null)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcpy(i8* %16, i8* %17)
  br label %19

19:                                               ; preds = %29, %3
  %20 = load %struct.env_set*, %struct.env_set** %4, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32* @env_set_get(%struct.env_set* %20, i8* %21)
  %23 = icmp ne i32* null, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp ult i32 %25, 1000
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  br i1 %28, label %29, label %38

29:                                               ; preds = %27
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @openvpn_snprintf(i8* %30, i64 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33)
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %19

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  %40 = icmp ult i32 %39, 1000
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.env_set*, %struct.env_set** %4, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @setenv_str(%struct.env_set* %42, i8* %43, i8* %44)
  br label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @D_TLS_DEBUG_MED, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @msg(i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @free(i8* %51)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @gc_malloc(i64, i32, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32* @env_set_get(%struct.env_set*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @openvpn_snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i8*, i8*) #1

declare dso_local i32 @msg(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
