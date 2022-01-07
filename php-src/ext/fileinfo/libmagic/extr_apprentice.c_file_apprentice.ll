; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_apprentice.c_file_apprentice.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_apprentice.c_file_apprentice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { i32** }

@.str = private unnamed_addr constant [6 x i8] c"MAGIC\00", align 1
@MAGIC_SETS = common dso_local global i64 0, align 8
@PATHSEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"could not find any valid magic files!\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid action %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_apprentice(%struct.magic_set* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.magic_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.magic_set* %0, %struct.magic_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %11, align 4
  %13 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %14 = call i32 @file_reset(%struct.magic_set* %13, i32 0)
  %15 = call i32 (...) @init_file_tables()
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %6, align 8
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  store i64 0, i64* %12, align 8
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @MAGIC_SETS, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %30 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @mlist_free(i32* %34)
  %36 = call i8* (...) @mlist_alloc()
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %39 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  store i32* %37, i32** %42, align 8
  %43 = icmp eq i32* %37, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %28
  %45 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %46 = call i32 @file_oomem(%struct.magic_set* %45, i32 4)
  store i32 -1, i32* %4, align 4
  br label %178

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %12, align 8
  br label %24

51:                                               ; preds = %24
  %52 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @apprentice_1(%struct.magic_set* %52, i8* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %178

56:                                               ; preds = %20
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @estrdup(i8* %57)
  store i8* %58, i8** %9, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = call i32 @file_oomem(%struct.magic_set* %61, i32 %63)
  store i32 -1, i32* %4, align 4
  br label %178

65:                                               ; preds = %56
  store i64 0, i64* %12, align 8
  br label %66

66:                                               ; preds = %110, %65
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @MAGIC_SETS, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %113

70:                                               ; preds = %66
  %71 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %72 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %71, i32 0, i32 0
  %73 = load i32**, i32*** %72, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @mlist_free(i32* %76)
  %78 = call i8* (...) @mlist_alloc()
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %81 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  store i32* %79, i32** %84, align 8
  %85 = icmp eq i32* %79, null
  br i1 %85, label %86, label %109

86:                                               ; preds = %70
  %87 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %88 = call i32 @file_oomem(%struct.magic_set* %87, i32 4)
  br label %89

89:                                               ; preds = %93, %86
  %90 = load i64, i64* %12, align 8
  %91 = add i64 %90, -1
  store i64 %91, i64* %12, align 8
  %92 = icmp ugt i64 %90, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %95 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %94, i32 0, i32 0
  %96 = load i32**, i32*** %95, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds i32*, i32** %96, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @mlist_free(i32* %99)
  %101 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %102 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %101, i32 0, i32 0
  %103 = load i32**, i32*** %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  store i32* null, i32** %105, align 8
  br label %89

106:                                              ; preds = %89
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @efree(i8* %107)
  store i32 -1, i32* %4, align 4
  br label %178

109:                                              ; preds = %70
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %12, align 8
  br label %66

113:                                              ; preds = %66
  %114 = load i8*, i8** %9, align 8
  store i8* %114, i8** %6, align 8
  br label %115

115:                                              ; preds = %133, %113
  %116 = load i8*, i8** %6, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %142

118:                                              ; preds = %115
  %119 = load i8*, i8** %6, align 8
  %120 = load i32, i32* @PATHSEP, align 4
  %121 = call i8* @strchr(i8* %119, i32 %120)
  store i8* %121, i8** %8, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %8, align 8
  store i8 0, i8* %125, align 1
  br label %127

127:                                              ; preds = %124, %118
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %142

133:                                              ; preds = %127
  %134 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @apprentice_1(%struct.magic_set* %134, i8* %135, i32 %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @MAX(i32 %138, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i8*, i8** %8, align 8
  store i8* %141, i8** %6, align 8
  br label %115

142:                                              ; preds = %132, %115
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @efree(i8* %143)
  %145 = load i32, i32* %11, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %171

147:                                              ; preds = %142
  store i64 0, i64* %12, align 8
  br label %148

148:                                              ; preds = %165, %147
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* @MAGIC_SETS, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %148
  %153 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %154 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %153, i32 0, i32 0
  %155 = load i32**, i32*** %154, align 8
  %156 = load i64, i64* %12, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @mlist_free(i32* %158)
  %160 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %161 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %160, i32 0, i32 0
  %162 = load i32**, i32*** %161, align 8
  %163 = load i64, i64* %12, align 8
  %164 = getelementptr inbounds i32*, i32** %162, i64 %163
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %152
  %166 = load i64, i64* %12, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %12, align 8
  br label %148

168:                                              ; preds = %148
  %169 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %170 = call i32 (%struct.magic_set*, i32, i8*, ...) @file_error(%struct.magic_set* %169, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %178

171:                                              ; preds = %142
  %172 = load i32, i32* %7, align 4
  switch i32 %172, label %174 [
    i32 128, label %173
    i32 130, label %173
    i32 131, label %173
    i32 129, label %173
  ]

173:                                              ; preds = %171, %171, %171, %171
  store i32 0, i32* %4, align 4
  br label %178

174:                                              ; preds = %171
  %175 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 (%struct.magic_set*, i32, i8*, ...) @file_error(%struct.magic_set* %175, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  store i32 -1, i32* %4, align 4
  br label %178

178:                                              ; preds = %174, %173, %168, %106, %60, %51, %44
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @file_reset(%struct.magic_set*, i32) #1

declare dso_local i32 @init_file_tables(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @mlist_free(i32*) #1

declare dso_local i8* @mlist_alloc(...) #1

declare dso_local i32 @file_oomem(%struct.magic_set*, i32) #1

declare dso_local i32 @apprentice_1(%struct.magic_set*, i8*, i32) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @file_error(%struct.magic_set*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
