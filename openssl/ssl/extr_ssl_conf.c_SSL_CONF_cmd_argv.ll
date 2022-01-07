; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_conf.c_SSL_CONF_cmd_argv.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_conf.c_SSL_CONF_cmd_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SSL_CONF_FLAG_FILE = common dso_local global i32 0, align 4
@SSL_CONF_FLAG_CMDLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_CONF_cmd_argv(%struct.TYPE_4__* %0, i32* %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store i8* null, i8** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %89

18:                                               ; preds = %13, %3
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %18
  %26 = load i8***, i8**** %7, align 8
  %27 = load i8**, i8*** %26, align 8
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %89

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %33
  %41 = load i8***, i8**** %7, align 8
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %10, align 8
  br label %46

45:                                               ; preds = %36
  store i8* null, i8** %10, align 8
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* @SSL_CONF_FLAG_FILE, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @SSL_CONF_FLAG_CMDLINE, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @SSL_CONF_cmd(%struct.TYPE_4__* %58, i8* %59, i8* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %46
  %65 = load i32, i32* %8, align 4
  %66 = load i8***, i8**** %7, align 8
  %67 = load i8**, i8*** %66, align 8
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  store i8** %69, i8*** %66, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %64
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %89

79:                                               ; preds = %46
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, -2
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %89

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 -1, i32* %4, align 4
  br label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %86, %82, %77, %32, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @SSL_CONF_cmd(%struct.TYPE_4__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
