; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fshelp.c_find_file.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fshelp.c_find_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_fshelp_find_file_closure = type { i32 (i32, i32, %struct.find_file_closure*)*, i32, i8* (i32)*, i32, i32, i32 }
%struct.find_file_closure = type opaque
%struct.find_file_closure.0 = type { i8*, i32*, i32*, i32* }

@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FILE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not a directory\00", align 1
@iterate = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@GRUB_FSHELP_SYMLINK = common dso_local global i32 0, align 4
@GRUB_ERR_SYMLINK_LOOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"too deep nesting of symlinks\00", align 1
@GRUB_ERR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"file not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32*, %struct.grub_fshelp_find_file_closure*)* @find_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_file(i8* %0, i32 %1, i32* %2, %struct.grub_fshelp_find_file_closure* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.grub_fshelp_find_file_closure*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.find_file_closure.0, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.grub_fshelp_find_file_closure* %3, %struct.grub_fshelp_find_file_closure** %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @grub_strlen(i8* %19)
  %21 = add nsw i64 %20, 1
  %22 = call i8* @grub_malloc(i64 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  store i8* %23, i8** %11, align 8
  %24 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %29 = getelementptr inbounds %struct.grub_fshelp_find_file_closure, %struct.grub_fshelp_find_file_closure* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @grub_strlen(i8* %32)
  %34 = add nsw i64 %33, 1
  %35 = call i32 @grub_strncpy(i8* %30, i8* %31, i64 %34)
  br label %36

36:                                               ; preds = %41, %4
  %37 = load i8*, i8** %11, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %11, align 8
  br label %36

44:                                               ; preds = %36
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @grub_free(i8* %51)
  store i64 0, i64* %5, align 8
  br label %202

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %195, %53
  %55 = load i8*, i8** %11, align 8
  %56 = call i8* @grub_strchr(i8* %55, i8 signext 47)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %65, %59
  %61 = load i8*, i8** %12, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 47
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %12, align 8
  store i8 0, i8* %66, align 1
  br label %60

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %76 = call i32 @free_node(i32 %74, %struct.grub_fshelp_find_file_closure* %75)
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @grub_free(i8* %77)
  %79 = load i32, i32* @GRUB_ERR_BAD_FILE_TYPE, align 4
  %80 = call i64 @grub_error(i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 %80, i64* %5, align 8
  br label %202

81:                                               ; preds = %69
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds %struct.find_file_closure.0, %struct.find_file_closure.0* %17, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  %84 = getelementptr inbounds %struct.find_file_closure.0, %struct.find_file_closure.0* %17, i32 0, i32 1
  store i32* %13, i32** %84, align 8
  %85 = getelementptr inbounds %struct.find_file_closure.0, %struct.find_file_closure.0* %17, i32 0, i32 3
  store i32* %15, i32** %85, align 8
  %86 = getelementptr inbounds %struct.find_file_closure.0, %struct.find_file_closure.0* %17, i32 0, i32 2
  store i32* %14, i32** %86, align 8
  %87 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %88 = getelementptr inbounds %struct.grub_fshelp_find_file_closure, %struct.grub_fshelp_find_file_closure* %87, i32 0, i32 0
  %89 = load i32 (i32, i32, %struct.find_file_closure*)*, i32 (i32, i32, %struct.find_file_closure*)** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @iterate, align 4
  %92 = bitcast %struct.find_file_closure.0* %17 to %struct.find_file_closure*
  %93 = call i32 %89(i32 %90, i32 %91, %struct.find_file_closure* %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %81
  %97 = load i64, i64* @grub_errno, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @grub_free(i8* %100)
  %102 = load i64, i64* @grub_errno, align 8
  store i64 %102, i64* %5, align 8
  br label %202

103:                                              ; preds = %96
  br label %197

104:                                              ; preds = %81
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @GRUB_FSHELP_SYMLINK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %176

108:                                              ; preds = %104
  %109 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %110 = getelementptr inbounds %struct.grub_fshelp_find_file_closure, %struct.grub_fshelp_find_file_closure* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  %113 = icmp eq i32 %112, 8
  br i1 %113, label %114, label %125

114:                                              ; preds = %108
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %117 = call i32 @free_node(i32 %115, %struct.grub_fshelp_find_file_closure* %116)
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %120 = call i32 @free_node(i32 %118, %struct.grub_fshelp_find_file_closure* %119)
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @grub_free(i8* %121)
  %123 = load i32, i32* @GRUB_ERR_SYMLINK_LOOP, align 4
  %124 = call i64 @grub_error(i32 %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i64 %124, i64* %5, align 8
  br label %202

125:                                              ; preds = %108
  %126 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %127 = getelementptr inbounds %struct.grub_fshelp_find_file_closure, %struct.grub_fshelp_find_file_closure* %126, i32 0, i32 2
  %128 = load i8* (i32)*, i8* (i32)** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i8* %128(i32 %129)
  store i8* %130, i8** %18, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %133 = call i32 @free_node(i32 %131, %struct.grub_fshelp_find_file_closure* %132)
  %134 = load i8*, i8** %18, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %143, label %136

136:                                              ; preds = %125
  %137 = load i32, i32* %15, align 4
  %138 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %139 = call i32 @free_node(i32 %137, %struct.grub_fshelp_find_file_closure* %138)
  %140 = load i8*, i8** %10, align 8
  %141 = call i32 @grub_free(i8* %140)
  %142 = load i64, i64* @grub_errno, align 8
  store i64 %142, i64* %5, align 8
  br label %202

143:                                              ; preds = %125
  %144 = load i8*, i8** %18, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 47
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %152 = call i32 @free_node(i32 %150, %struct.grub_fshelp_find_file_closure* %151)
  %153 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %154 = getelementptr inbounds %struct.grub_fshelp_find_file_closure, %struct.grub_fshelp_find_file_closure* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %149, %143
  %157 = load i8*, i8** %18, align 8
  %158 = load i32, i32* %15, align 4
  %159 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %160 = call i64 @find_file(i8* %157, i32 %158, i32* %14, %struct.grub_fshelp_find_file_closure* %159)
  %161 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %162 = getelementptr inbounds %struct.grub_fshelp_find_file_closure, %struct.grub_fshelp_find_file_closure* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %13, align 4
  %164 = load i8*, i8** %18, align 8
  %165 = call i32 @grub_free(i8* %164)
  %166 = load i64, i64* @grub_errno, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %156
  %169 = load i32, i32* %15, align 4
  %170 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %171 = call i32 @free_node(i32 %169, %struct.grub_fshelp_find_file_closure* %170)
  %172 = load i8*, i8** %10, align 8
  %173 = call i32 @grub_free(i8* %172)
  %174 = load i64, i64* @grub_errno, align 8
  store i64 %174, i64* %5, align 8
  br label %202

175:                                              ; preds = %156
  br label %176

176:                                              ; preds = %175, %104
  %177 = load i32, i32* %15, align 4
  %178 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %179 = call i32 @free_node(i32 %177, %struct.grub_fshelp_find_file_closure* %178)
  %180 = load i8*, i8** %12, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = load i8*, i8** %12, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %182, %176
  %188 = load i32, i32* %14, align 4
  %189 = load i32*, i32** %8, align 8
  store i32 %188, i32* %189, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.grub_fshelp_find_file_closure*, %struct.grub_fshelp_find_file_closure** %9, align 8
  %192 = getelementptr inbounds %struct.grub_fshelp_find_file_closure, %struct.grub_fshelp_find_file_closure* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = call i32 @grub_free(i8* %193)
  store i64 0, i64* %5, align 8
  br label %202

195:                                              ; preds = %182
  %196 = load i8*, i8** %12, align 8
  store i8* %196, i8** %11, align 8
  br label %54

197:                                              ; preds = %103
  %198 = load i8*, i8** %10, align 8
  %199 = call i32 @grub_free(i8* %198)
  %200 = load i32, i32* @GRUB_ERR_FILE_NOT_FOUND, align 4
  %201 = call i64 @grub_error(i32 %200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i64 %201, i64* %5, align 8
  br label %202

202:                                              ; preds = %197, %187, %168, %136, %114, %99, %73, %48
  %203 = load i64, i64* %5, align 8
  ret i64 %203
}

declare dso_local i8* @grub_malloc(i64) #1

declare dso_local i64 @grub_strlen(i8*) #1

declare dso_local i32 @grub_strncpy(i8*, i8*, i64) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i8* @grub_strchr(i8*, i8 signext) #1

declare dso_local i32 @free_node(i32, %struct.grub_fshelp_find_file_closure*) #1

declare dso_local i64 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
