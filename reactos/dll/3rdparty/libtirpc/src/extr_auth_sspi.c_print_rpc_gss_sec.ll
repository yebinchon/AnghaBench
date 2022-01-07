; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_print_rpc_gss_sec.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_sspi.c_print_rpc_gss_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_sspi_sec = type { i8, i8, i8, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@fd_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rpc_gss_sec:\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"NULL gss_OID mech\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"     mechanism_OID: {\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" %u %u\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"     qop: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"     service: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"     cred: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_rpc_gss_sec(%struct.rpc_sspi_sec* %0) #0 {
  %2 = alloca %struct.rpc_sspi_sec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rpc_sspi_sec* %0, %struct.rpc_sspi_sec** %2, align 8
  %7 = load i32, i32* @fd_out, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %2, align 8
  %10 = getelementptr inbounds %struct.rpc_sspi_sec, %struct.rpc_sspi_sec* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @fd_out, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %99

16:                                               ; preds = %1
  %17 = load i32, i32* @fd_out, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %2, align 8
  %20 = getelementptr inbounds %struct.rpc_sspi_sec, %struct.rpc_sspi_sec* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %4, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %93, %16
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %2, align 8
  %28 = getelementptr inbounds %struct.rpc_sspi_sec, %struct.rpc_sspi_sec* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %96

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %85

36:                                               ; preds = %33
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp slt i32 %39, 40
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %78

45:                                               ; preds = %36
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sle i32 40, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp slt i32 %53, 80
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 40
  store i32 %59, i32* %6, align 4
  br label %77

60:                                               ; preds = %50, %45
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sle i32 80, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp slt i32 %68, 127
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  store i32 2, i32* %5, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = sub nsw i32 %73, 80
  store i32 %74, i32* %6, align 4
  br label %76

75:                                               ; preds = %65, %60
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %70
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %41
  %79 = load i32, i32* @fd_out, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %4, align 8
  br label %92

85:                                               ; preds = %33
  %86 = load i32, i32* @fd_out, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %4, align 8
  %89 = load i8, i8* %87, align 1
  %90 = zext i8 %89 to i32
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %85, %78
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %25

96:                                               ; preds = %25
  %97 = load i32, i32* @fd_out, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %13
  %100 = load i32, i32* @fd_out, align 4
  %101 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %2, align 8
  %102 = getelementptr inbounds %struct.rpc_sspi_sec, %struct.rpc_sspi_sec* %101, i32 0, i32 0
  %103 = load i8, i8* %102, align 8
  %104 = zext i8 %103 to i32
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @fd_out, align 4
  %107 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %2, align 8
  %108 = getelementptr inbounds %struct.rpc_sspi_sec, %struct.rpc_sspi_sec* %107, i32 0, i32 1
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @fd_out, align 4
  %113 = load %struct.rpc_sspi_sec*, %struct.rpc_sspi_sec** %2, align 8
  %114 = getelementptr inbounds %struct.rpc_sspi_sec, %struct.rpc_sspi_sec* %113, i32 0, i32 2
  %115 = load i8, i8* %114, align 2
  %116 = zext i8 %115 to i32
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %116)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
