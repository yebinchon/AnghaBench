; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-common.c_pq_verify_peer_name_matches_certificate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-common.c_pq_verify_peer_name_matches_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"verify-full\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"host name must be specified for a verified SSL connection\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"server certificate for \22%s\22 (and %d other name) does not match host name \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"server certificate for \22%s\22 (and %d other names) does not match host name \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"server certificate for \22%s\22 does not match host name \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"could not get server's host name from server certificate\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pq_verify_peer_name_matches_certificate(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strcmp(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %83

23:                                               ; preds = %1
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26, %23
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @libpq_gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %34, i32 %35)
  store i32 0, i32* %2, align 4
  br label %83

37:                                               ; preds = %26
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = call i32 @pgtls_verify_peer_name_matches_certificate_guts(%struct.TYPE_6__* %38, i32* %6, i8** %7)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @libpq_ngettext(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %47, i32 %50, i8* %51, i32 %53, i8* %54)
  br label %72

56:                                               ; preds = %42
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = call i32 @libpq_gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %61, i32 %62, i8* %63, i8* %64)
  br label %71

66:                                               ; preds = %56
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = call i32 @libpq_gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %70 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %59
  br label %72

72:                                               ; preds = %71, %45
  br label %73

73:                                               ; preds = %72, %37
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @free(i8* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 1
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %32, %22
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @pgtls_verify_peer_name_matches_certificate_guts(%struct.TYPE_6__*, i32*, i8**) #1

declare dso_local i32 @libpq_ngettext(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
