; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dex.c_dex_method_fullname.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dex.c_dex_method_fullname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__*, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s.%s%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@simplifiedDemangling = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, i32)* @dex_method_fullname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dex_method_fullname(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i1 [ false, %2 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @r_return_val_if_fail(i32 %24, i32* null)
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %22
  store i8* null, i8** %3, align 8
  br label %142

36:                                               ; preds = %28
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47, %36
  store i8* null, i8** %3, align 8
  br label %142

55:                                               ; preds = %47
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i8* @dex_method_name(%struct.TYPE_10__* %56, i32 %57)
  store i8* %58, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  store i8* null, i8** %3, align 8
  br label %142

62:                                               ; preds = %55
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i8* @dex_class_name_byid(%struct.TYPE_10__* %63, i32 %64)
  store i8* %65, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %92

68:                                               ; preds = %62
  %69 = load i8*, i8** %8, align 8
  %70 = call i8* @strdup(i8* %69)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @r_str_replace_char(i8* %71, i8 signext 59, i32 0)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i8* @dex_method_signature(%struct.TYPE_10__* %73, i32 %74)
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call i8* @r_str_newf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %79, i8* %80, i8* %81)
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @free(i8* %83)
  br label %89

85:                                               ; preds = %68
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i8* @r_str_newf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %86, i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %88, i8** %9, align 8
  br label %89

89:                                               ; preds = %85, %78
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @free(i8* %90)
  br label %110

92:                                               ; preds = %62
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i8* @dex_method_signature(%struct.TYPE_10__* %93, i32 %94)
  store i8* %95, i8** %12, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = call i8* @r_str_newf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %99, i8* %100)
  store i8* %101, i8** %9, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 @free(i8* %102)
  br label %109

104:                                              ; preds = %92
  %105 = load i8*, i8** %7, align 8
  %106 = call i8* @r_str_newf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %106, i8** %9, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @free(i8* %107)
  br label %109

109:                                              ; preds = %104, %98
  br label %110

110:                                              ; preds = %109, %89
  %111 = load i8*, i8** %9, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %140

113:                                              ; preds = %110
  %114 = load i64, i64* @simplifiedDemangling, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8
  %118 = call i8* @strchr(i8* %117, i8 signext 40)
  store i8* %118, i8** %13, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %139

121:                                              ; preds = %116
  %122 = load i8*, i8** %13, align 8
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %13, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = call i8* @strchr(i8* %124, i8 signext 41)
  store i8* %125, i8** %14, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %121
  %129 = load i8*, i8** %14, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = call i32 @simplify(i8* %130)
  %132 = load i8*, i8** %13, align 8
  %133 = load i8*, i8** %14, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = call i32 @r_str_cpy(i8* %132, i8* %134)
  br label %136

136:                                              ; preds = %128, %121
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @simplify(i8* %137)
  br label %139

139:                                              ; preds = %136, %116
  br label %140

140:                                              ; preds = %139, %113, %110
  %141 = load i8*, i8** %9, align 8
  store i8* %141, i8** %3, align 8
  br label %142

142:                                              ; preds = %140, %61, %54, %35
  %143 = load i8*, i8** %3, align 8
  ret i8* %143
}

declare dso_local i32 @r_return_val_if_fail(i32, i32*) #1

declare dso_local i8* @dex_method_name(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @dex_class_name_byid(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_str_replace_char(i8*, i8 signext, i32) #1

declare dso_local i8* @dex_method_signature(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @simplify(i8*) #1

declare dso_local i32 @r_str_cpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
