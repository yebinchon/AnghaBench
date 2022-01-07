; ModuleID = '/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_handler.c_ngx_mail_auth_cram_md5_salt.c'
source_filename = "/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_handler.c_ngx_mail_auth_cram_md5_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_13__ }
%struct.TYPE_9__ = type { i32*, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@CR = common dso_local global i32 0, align 4
@LF = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_mail_auth_cram_md5_salt(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @ngx_base64_encoded_length(i32 %20)
  %22 = add i64 %16, %21
  %23 = add i64 %22, 2
  %24 = call i32* @ngx_pnalloc(i32 %15, i64 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @NGX_ERROR, align 4
  store i32 %28, i32* %5, align 4
  br label %71

29:                                               ; preds = %4
  %30 = load i32*, i32** %10, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @ngx_cpymem(i32* %30, i8* %31, i64 %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 2
  store i32 %39, i32* %37, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = call i32 @ngx_encode_base64(%struct.TYPE_10__* %11, %struct.TYPE_13__* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %45, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %48, %50
  store i64 %51, i64* %12, align 8
  %52 = load i32, i32* @CR, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %12, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @LF, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i64, i64* %12, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %12, align 8
  %61 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %61, align 4
  %62 = load i64, i64* %12, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32* %66, i32** %69, align 8
  %70 = load i32, i32* @NGX_OK, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %29, %27
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i64 @ngx_base64_encoded_length(i32) #1

declare dso_local i32 @ngx_cpymem(i32*, i8*, i64) #1

declare dso_local i32 @ngx_encode_base64(%struct.TYPE_10__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
