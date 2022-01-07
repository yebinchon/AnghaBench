; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_set_name.c__zip_set_name.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_set_name.c__zip_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i64, i32, %struct.zip_entry* }
%struct.zip_entry = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, %struct.zip_string* }
%struct.zip_string = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@ZIP_ER_RDONLY = common dso_local global i32 0, align 4
@ZIP_FL_ENCODING_ALL = common dso_local global i32 0, align 4
@ZIP_FL_ENC_GUESS = common dso_local global i32 0, align 4
@ZIP_ENCODING_UNKNOWN = common dso_local global i32 0, align 4
@ZIP_ENCODING_UTF8_GUESSED = common dso_local global i64 0, align 8
@ZIP_ENCODING_UTF8_KNOWN = common dso_local global i32 0, align 4
@ZIP_ER_EXISTS = common dso_local global i32 0, align 4
@ZIP_DIRENT_FILENAME = common dso_local global i32 0, align 4
@ZIP_ER_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_set_name(%struct.zip* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.zip_entry*, align 8
  %11 = alloca %struct.zip_string*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.zip* %0, %struct.zip** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.zip*, %struct.zip** %6, align 8
  %16 = getelementptr inbounds %struct.zip, %struct.zip* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.zip*, %struct.zip** %6, align 8
  %21 = getelementptr inbounds %struct.zip, %struct.zip* %20, i32 0, i32 1
  %22 = load i32, i32* @ZIP_ER_INVAL, align 4
  %23 = call i32 @_zip_error_set(i32* %21, i32 %22, i32 0)
  store i32 -1, i32* %5, align 4
  br label %202

24:                                               ; preds = %4
  %25 = load %struct.zip*, %struct.zip** %6, align 8
  %26 = call i64 @ZIP_IS_RDONLY(%struct.zip* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.zip*, %struct.zip** %6, align 8
  %30 = getelementptr inbounds %struct.zip, %struct.zip* %29, i32 0, i32 1
  %31 = load i32, i32* @ZIP_ER_RDONLY, align 4
  %32 = call i32 @_zip_error_set(i32* %30, i32 %31, i32 0)
  store i32 -1, i32* %5, align 4
  br label %202

33:                                               ; preds = %24
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %69

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.zip*, %struct.zip** %6, align 8
  %48 = getelementptr inbounds %struct.zip, %struct.zip* %47, i32 0, i32 1
  %49 = call %struct.zip_string* @_zip_string_new(i32* %42, i32 %45, i32 %46, i32* %48)
  store %struct.zip_string* %49, %struct.zip_string** %11, align 8
  %50 = icmp eq %struct.zip_string* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %202

52:                                               ; preds = %40
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @ZIP_FL_ENCODING_ALL, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @ZIP_FL_ENC_GUESS, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %struct.zip_string*, %struct.zip_string** %11, align 8
  %60 = load i32, i32* @ZIP_ENCODING_UNKNOWN, align 4
  %61 = call i64 @_zip_guess_encoding(%struct.zip_string* %59, i32 %60)
  %62 = load i64, i64* @ZIP_ENCODING_UTF8_GUESSED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  %66 = load %struct.zip_string*, %struct.zip_string** %11, align 8
  %67 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %58, %52
  br label %70

69:                                               ; preds = %36, %33
  store %struct.zip_string* null, %struct.zip_string** %11, align 8
  br label %70

70:                                               ; preds = %69, %68
  %71 = load %struct.zip*, %struct.zip** %6, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @_zip_name_locate(%struct.zip* %71, i8* %72, i32 0, i32* null)
  store i64 %73, i64* %13, align 8
  %74 = icmp sge i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load %struct.zip_string*, %struct.zip_string** %11, align 8
  %81 = call i32 @_zip_string_free(%struct.zip_string* %80)
  %82 = load %struct.zip*, %struct.zip** %6, align 8
  %83 = getelementptr inbounds %struct.zip, %struct.zip* %82, i32 0, i32 1
  %84 = load i32, i32* @ZIP_ER_EXISTS, align 4
  %85 = call i32 @_zip_error_set(i32* %83, i32 %84, i32 0)
  store i32 -1, i32* %5, align 4
  br label %202

86:                                               ; preds = %75, %70
  %87 = load i64, i64* %13, align 8
  %88 = icmp sge i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.zip_string*, %struct.zip_string** %11, align 8
  %95 = call i32 @_zip_string_free(%struct.zip_string* %94)
  store i32 0, i32* %5, align 4
  br label %202

96:                                               ; preds = %89, %86
  %97 = load %struct.zip*, %struct.zip** %6, align 8
  %98 = getelementptr inbounds %struct.zip, %struct.zip* %97, i32 0, i32 2
  %99 = load %struct.zip_entry*, %struct.zip_entry** %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %99, i64 %100
  store %struct.zip_entry* %101, %struct.zip_entry** %10, align 8
  %102 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %103 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = icmp ne %struct.TYPE_4__* %104, null
  br i1 %105, label %106, label %125

106:                                              ; preds = %96
  %107 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %108 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load %struct.zip_string*, %struct.zip_string** %110, align 8
  %112 = call i32 @_zip_string_free(%struct.zip_string* %111)
  %113 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %114 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store %struct.zip_string* null, %struct.zip_string** %116, align 8
  %117 = load i32, i32* @ZIP_DIRENT_FILENAME, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %120 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %118
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %106, %96
  %126 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %127 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = icmp ne %struct.TYPE_5__* %128, null
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %132 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.zip_string*, %struct.zip_string** %11, align 8
  %137 = call i32 @_zip_string_equal(i32 %135, %struct.zip_string* %136)
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %12, align 4
  br label %142

141:                                              ; preds = %125
  store i32 1, i32* %12, align 4
  br label %142

142:                                              ; preds = %141, %130
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %179

145:                                              ; preds = %142
  %146 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %147 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = icmp eq %struct.TYPE_4__* %148, null
  br i1 %149, label %150, label %166

150:                                              ; preds = %145
  %151 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %152 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %151, i32 0, i32 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = call %struct.TYPE_4__* @_zip_dirent_clone(%struct.TYPE_5__* %153)
  %155 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %156 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %155, i32 0, i32 0
  store %struct.TYPE_4__* %154, %struct.TYPE_4__** %156, align 8
  %157 = icmp eq %struct.TYPE_4__* %154, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = load %struct.zip*, %struct.zip** %6, align 8
  %160 = getelementptr inbounds %struct.zip, %struct.zip* %159, i32 0, i32 1
  %161 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %162 = call i32 @_zip_error_set(i32* %160, i32 %161, i32 0)
  %163 = load %struct.zip_string*, %struct.zip_string** %11, align 8
  %164 = call i32 @_zip_string_free(%struct.zip_string* %163)
  store i32 -1, i32* %5, align 4
  br label %202

165:                                              ; preds = %150
  br label %166

166:                                              ; preds = %165, %145
  %167 = load %struct.zip_string*, %struct.zip_string** %11, align 8
  %168 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %169 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store %struct.zip_string* %167, %struct.zip_string** %171, align 8
  %172 = load i32, i32* @ZIP_DIRENT_FILENAME, align 4
  %173 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %174 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %172
  store i32 %178, i32* %176, align 8
  br label %201

179:                                              ; preds = %142
  %180 = load %struct.zip_string*, %struct.zip_string** %11, align 8
  %181 = call i32 @_zip_string_free(%struct.zip_string* %180)
  %182 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %183 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %182, i32 0, i32 0
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = icmp ne %struct.TYPE_4__* %184, null
  br i1 %185, label %186, label %200

186:                                              ; preds = %179
  %187 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %188 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %187, i32 0, i32 0
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %186
  %194 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %195 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %194, i32 0, i32 0
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = call i32 @_zip_dirent_free(%struct.TYPE_4__* %196)
  %198 = load %struct.zip_entry*, %struct.zip_entry** %10, align 8
  %199 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %198, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %199, align 8
  br label %200

200:                                              ; preds = %193, %186, %179
  br label %201

201:                                              ; preds = %200, %166
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %201, %158, %93, %79, %51, %28, %19
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #1

declare dso_local i64 @ZIP_IS_RDONLY(%struct.zip*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.zip_string* @_zip_string_new(i32*, i32, i32, i32*) #1

declare dso_local i64 @_zip_guess_encoding(%struct.zip_string*, i32) #1

declare dso_local i64 @_zip_name_locate(%struct.zip*, i8*, i32, i32*) #1

declare dso_local i32 @_zip_string_free(%struct.zip_string*) #1

declare dso_local i32 @_zip_string_equal(i32, %struct.zip_string*) #1

declare dso_local %struct.TYPE_4__* @_zip_dirent_clone(%struct.TYPE_5__*) #1

declare dso_local i32 @_zip_dirent_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
