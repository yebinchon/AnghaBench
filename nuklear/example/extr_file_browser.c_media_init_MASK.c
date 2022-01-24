#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct icons {int /*<<< orphan*/  movie_file; int /*<<< orphan*/  img_file; int /*<<< orphan*/  font_file; int /*<<< orphan*/  music_file; int /*<<< orphan*/  text_file; int /*<<< orphan*/  default_file; } ;
struct media {void** files; void** group; struct icons icons; } ;

/* Variables and functions */
 size_t FILE_BMP ; 
 size_t FILE_CPP_HEADER ; 
 size_t FILE_CPP_SOURCE ; 
 size_t FILE_C_SOURCE ; 
 void* FUNC0 (size_t,char*,size_t) ; 
 size_t FILE_DEFAULT ; 
 size_t FILE_GIF ; 
 void* FUNC1 (size_t,char*,int /*<<< orphan*/ *) ; 
 size_t FILE_GROUP_DEFAULT ; 
 size_t FILE_GROUP_FONT ; 
 size_t FILE_GROUP_IMAGE ; 
 size_t FILE_GROUP_MOVIE ; 
 size_t FILE_GROUP_MUSIC ; 
 size_t FILE_GROUP_TEXT ; 
 size_t FILE_HEADER ; 
 size_t FILE_JPEG ; 
 size_t FILE_MP3 ; 
 size_t FILE_OGG ; 
 size_t FILE_PCX ; 
 size_t FILE_PNG ; 
 size_t FILE_TEXT ; 
 size_t FILE_TGA ; 
 size_t FILE_TTF ; 
 size_t FILE_WAV ; 

__attribute__((used)) static void
FUNC2(struct media *media)
{
    /* file groups */
    struct icons *icons = &media->icons;
    media->group[FILE_GROUP_DEFAULT] = FUNC1(FILE_GROUP_DEFAULT,"default",&icons->default_file);
    media->group[FILE_GROUP_TEXT] = FUNC1(FILE_GROUP_TEXT, "textual", &icons->text_file);
    media->group[FILE_GROUP_MUSIC] = FUNC1(FILE_GROUP_MUSIC, "music", &icons->music_file);
    media->group[FILE_GROUP_FONT] = FUNC1(FILE_GROUP_FONT, "font", &icons->font_file);
    media->group[FILE_GROUP_IMAGE] = FUNC1(FILE_GROUP_IMAGE, "image", &icons->img_file);
    media->group[FILE_GROUP_MOVIE] = FUNC1(FILE_GROUP_MOVIE, "movie", &icons->movie_file);

    /* files */
    media->files[FILE_DEFAULT] = FUNC0(FILE_DEFAULT, NULL, FILE_GROUP_DEFAULT);
    media->files[FILE_TEXT] = FUNC0(FILE_TEXT, "txt", FILE_GROUP_TEXT);
    media->files[FILE_C_SOURCE] = FUNC0(FILE_C_SOURCE, "c", FILE_GROUP_TEXT);
    media->files[FILE_CPP_SOURCE] = FUNC0(FILE_CPP_SOURCE, "cpp", FILE_GROUP_TEXT);
    media->files[FILE_HEADER] = FUNC0(FILE_HEADER, "h", FILE_GROUP_TEXT);
    media->files[FILE_CPP_HEADER] = FUNC0(FILE_HEADER, "hpp", FILE_GROUP_TEXT);
    media->files[FILE_MP3] = FUNC0(FILE_MP3, "mp3", FILE_GROUP_MUSIC);
    media->files[FILE_WAV] = FUNC0(FILE_WAV, "wav", FILE_GROUP_MUSIC);
    media->files[FILE_OGG] = FUNC0(FILE_OGG, "ogg", FILE_GROUP_MUSIC);
    media->files[FILE_TTF] = FUNC0(FILE_TTF, "ttf", FILE_GROUP_FONT);
    media->files[FILE_BMP] = FUNC0(FILE_BMP, "bmp", FILE_GROUP_IMAGE);
    media->files[FILE_PNG] = FUNC0(FILE_PNG, "png", FILE_GROUP_IMAGE);
    media->files[FILE_JPEG] = FUNC0(FILE_JPEG, "jpg", FILE_GROUP_IMAGE);
    media->files[FILE_PCX] = FUNC0(FILE_PCX, "pcx", FILE_GROUP_IMAGE);
    media->files[FILE_TGA] = FUNC0(FILE_TGA, "tga", FILE_GROUP_IMAGE);
    media->files[FILE_GIF] = FUNC0(FILE_GIF, "gif", FILE_GROUP_IMAGE);
}