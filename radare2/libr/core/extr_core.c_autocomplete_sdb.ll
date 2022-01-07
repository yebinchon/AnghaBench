; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_core.c_autocomplete_sdb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_core.c_autocomplete_sdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"anal/**\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"anal/%s/\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"anal/%s/*\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"anal/%s/%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"anal\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"anal/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i8*)* @autocomplete_sdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autocomplete_sdb(%struct.TYPE_3__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br label %36

36:                                               ; preds = %33, %30, %3
  %37 = phi i1 [ false, %30 ], [ false, %3 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @r_return_if_fail(i32 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 62)
  store i8* %41, i8** %7, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i8* @r_str_trim_ro(i8* %49)
  store i8* %50, i8** %6, align 8
  br label %51

51:                                               ; preds = %47, %36
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @r_str_new(i8* %52)
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %179

58:                                               ; preds = %51
  %59 = load i8*, i8** %10, align 8
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %61, i8** %19, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = call i8* @strstr(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %117, label %66

66:                                               ; preds = %58
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %68, i8** %20, align 8
  %69 = load i8*, i8** %20, align 8
  %70 = call i32 @strlen(i8* %69)
  store i32 %70, i32* %21, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i8* @sdb_querys(i32* %71, i32* null, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  br label %190

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %107, %76
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %77
  %82 = load i8*, i8** %11, align 8
  %83 = call i8* @strchr(i8* %82, i8 signext 10)
  store i8* %83, i8** %13, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %116

87:                                               ; preds = %81
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = call i8* @r_str_ndup(i8* %88, i32 %94)
  store i8* %95, i8** %14, align 8
  %96 = load i8*, i8** %20, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @strncmp(i8* %96, i8* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %87
  %102 = load i8*, i8** %14, align 8
  %103 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %102)
  store i8* %103, i8** %22, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = load i8*, i8** %22, align 8
  %106 = call i32 @r_line_completion_push(i32* %104, i8* %105)
  br label %107

107:                                              ; preds = %101, %87
  %108 = load i8*, i8** %13, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = add nsw i64 %112, 1
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 %113
  store i8* %115, i8** %11, align 8
  br label %77

116:                                              ; preds = %86, %77
  br label %178

117:                                              ; preds = %58
  %118 = load i8*, i8** %12, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %119, i8** %23, align 8
  %120 = load i8*, i8** %23, align 8
  %121 = call i32 @strlen(i8* %120)
  store i32 %121, i32* %24, align 4
  %122 = load i8*, i8** %19, align 8
  %123 = call i8* @strstr(i8* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %123, i8** %25, align 8
  %124 = load i8*, i8** %25, align 8
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %19, align 8
  %126 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %125)
  store i8* %126, i8** %15, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = call i8* @sdb_querys(i32* %127, i32* null, i32 0, i8* %128)
  store i8* %129, i8** %11, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %117
  br label %190

133:                                              ; preds = %117
  br label %134

134:                                              ; preds = %168, %133
  %135 = load i8*, i8** %11, align 8
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  br i1 %137, label %138, label %177

138:                                              ; preds = %134
  %139 = load i8*, i8** %11, align 8
  %140 = call i8* @strchr(i8* %139, i8 signext 10)
  store i8* %140, i8** %17, align 8
  %141 = load i8*, i8** %17, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  br label %177

144:                                              ; preds = %138
  %145 = load i8*, i8** %11, align 8
  %146 = load i8*, i8** %17, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = ptrtoint i8* %146 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = trunc i64 %150 to i32
  %152 = call i8* @r_str_ndup(i8* %145, i32 %151)
  store i8* %152, i8** %16, align 8
  %153 = load i8*, i8** %16, align 8
  %154 = call i8* @strstr(i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %154, i8** %18, align 8
  %155 = load i8*, i8** %18, align 8
  store i8 0, i8* %155, align 1
  %156 = load i8*, i8** %23, align 8
  %157 = load i8*, i8** %16, align 8
  %158 = load i32, i32* %24, align 4
  %159 = call i32 @strncmp(i8* %156, i8* %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %144
  %162 = load i8*, i8** %19, align 8
  %163 = load i8*, i8** %16, align 8
  %164 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %162, i8* %163)
  store i8* %164, i8** %26, align 8
  %165 = load i32*, i32** %5, align 8
  %166 = load i8*, i8** %26, align 8
  %167 = call i32 @r_line_completion_push(i32* %165, i8* %166)
  br label %168

168:                                              ; preds = %161, %144
  %169 = load i8*, i8** %17, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = ptrtoint i8* %169 to i64
  %172 = ptrtoint i8* %170 to i64
  %173 = sub i64 %171, %172
  %174 = add nsw i64 %173, 1
  %175 = load i8*, i8** %11, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 %174
  store i8* %176, i8** %11, align 8
  br label %134

177:                                              ; preds = %143, %134
  br label %178

178:                                              ; preds = %177, %116
  br label %190

179:                                              ; preds = %51
  %180 = load i8*, i8** %9, align 8
  %181 = call i32 @strlen(i8* %180)
  store i32 %181, i32* %27, align 4
  %182 = load i8*, i8** %9, align 8
  %183 = load i32, i32* %27, align 4
  %184 = call i32 @strncmp(i8* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %179
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @r_line_completion_push(i32* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %179
  br label %190

190:                                              ; preds = %75, %132, %189, %178
  ret void
}

declare dso_local i32 @r_return_if_fail(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i8* @r_str_new(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @sdb_querys(i32*, i32*, i32, i8*) #1

declare dso_local i8* @r_str_ndup(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*, ...) #1

declare dso_local i32 @r_line_completion_push(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
